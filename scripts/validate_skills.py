#!/usr/bin/env python3

from __future__ import annotations

import json
import os
import re
import sys
from dataclasses import dataclass
from pathlib import Path


@dataclass(frozen=True)
class SkillFrontmatter:
    name: str
    description: str


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def parse_frontmatter(markdown: str, *, source: Path) -> SkillFrontmatter:
    if not markdown.startswith("---\n"):
        raise ValueError(f"Missing frontmatter header '---' in {source}")
    end = markdown.find("\n---\n", 4)
    if end == -1:
        raise ValueError(f"Missing closing frontmatter '---' in {source}")
    block = markdown[4:end]

    name_match = re.search(r"^name:\s*\"([^\"]+)\"\s*$", block, re.MULTILINE)
    desc_match = re.search(r"^description:\s*\"(.*)\"\s*$", block, re.MULTILINE)
    if not name_match:
        raise ValueError(f"Missing frontmatter field 'name' in {source}")
    if not desc_match:
        raise ValueError(f"Missing frontmatter field 'description' in {source}")

    name = name_match.group(1).strip()
    description = desc_match.group(1).strip()
    if not name:
        raise ValueError(f"Empty frontmatter field 'name' in {source}")
    if not description:
        raise ValueError(f"Empty frontmatter field 'description' in {source}")

    return SkillFrontmatter(name=name, description=description)


def list_skill_dirs(skills_dir: Path) -> list[Path]:
    dirs: list[Path] = []
    for child in skills_dir.iterdir():
        if not child.is_dir():
            continue
        if (child / "SKILL.md").is_file():
            dirs.append(child)
    return sorted(dirs, key=lambda p: p.name)


def parse_skills_readme_table(readme_text: str) -> set[str]:
    skill_names: set[str] = set()
    for line in readme_text.splitlines():
        m = re.match(r"^\|\s*`([^`]+)`\s*\|", line)
        if m:
            skill_names.add(m.group(1).strip())
    return skill_names


def main() -> int:
    repo_root = Path(__file__).resolve().parents[1]
    skills_dir = repo_root / "skills"
    skills_readme = skills_dir / "README.md"
    config_path = repo_root / "traestack.config.json"

    if not skills_dir.is_dir():
        print(f"ERROR: missing skills dir: {skills_dir}")
        return 2
    if not skills_readme.is_file():
        print(f"ERROR: missing skills index: {skills_readme}")
        return 2
    if not config_path.is_file():
        print(f"ERROR: missing config: {config_path}")
        return 2

    errors: list[str] = []
    skill_dirs = list_skill_dirs(skills_dir)
    skill_names = [d.name for d in skill_dirs]
    duplicates = {n for n in skill_names if skill_names.count(n) > 1}
    if duplicates:
        errors.append(f"Duplicate skill directories: {sorted(duplicates)}")

    for d in skill_dirs:
        skill_file = d / "SKILL.md"
        try:
            fm = parse_frontmatter(read_text(skill_file), source=skill_file)
        except Exception as e:
            errors.append(str(e))
            continue
        if fm.name != d.name:
            errors.append(
                f"Frontmatter name mismatch: dir='{d.name}' frontmatter.name='{fm.name}' ({skill_file})"
            )

    readme_skill_names = parse_skills_readme_table(read_text(skills_readme))
    missing_in_readme = sorted(set(skill_names) - readme_skill_names)
    extra_in_readme = sorted(readme_skill_names - set(skill_names))
    if missing_in_readme:
        errors.append(f"skills/README.md missing skills: {missing_in_readme}")
    if extra_in_readme:
        errors.append(f"skills/README.md has non-existent skills: {extra_in_readme}")

    try:
        config = json.loads(read_text(config_path))
    except Exception as e:
        errors.append(f"Invalid JSON in traestack.config.json: {e}")
        config = None

    if isinstance(config, dict):
        declared_dir = config.get("skillsDir")
        if declared_dir != "skills":
            errors.append(f"traestack.config.json skillsDir must be 'skills' (got {declared_dir!r})")

    if errors:
        print("FAILED")
        for e in errors:
            print(f"- {e}")
        return 1

    print("OK")
    print(f"- skills: {len(skill_names)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

