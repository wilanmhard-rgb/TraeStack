#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOURCE_DIR="${TRAESTACK_SOURCE_DIR:-${REPO_ROOT}/skills}"
TARGET_DIR="${TRAESTACK_TARGET_DIR:-${HOME}/.trae/skills}"
BACKUP_ROOT="${TRAESTACK_BACKUP_DIR:-${HOME}/.trae/backups}"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="${BACKUP_ROOT}/traestack-${TIMESTAMP}"

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "ERROR: skills source dir not found: ${SOURCE_DIR}" >&2
  exit 1
fi

mkdir -p "${TARGET_DIR}"
mkdir -p "${BACKUP_ROOT}"

echo "Source: ${SOURCE_DIR}"
echo "Target: ${TARGET_DIR}"
echo "Backup: ${BACKUP_DIR}"

copied_count=0
backed_up_count=0

for skill_dir in "${SOURCE_DIR}"/*; do
  if [[ ! -d "${skill_dir}" ]]; then
    continue
  fi

  skill_name="$(basename "${skill_dir}")"
  skill_file="${skill_dir}/SKILL.md"
  target_skill_dir="${TARGET_DIR}/${skill_name}"

  if [[ ! -f "${skill_file}" ]]; then
    continue
  fi

  if [[ -e "${target_skill_dir}" ]]; then
    mkdir -p "${BACKUP_DIR}"
    cp -R "${target_skill_dir}" "${BACKUP_DIR}/${skill_name}"
    backed_up_count=$((backed_up_count + 1))
  fi

  rm -rf "${target_skill_dir}"
  cp -R "${skill_dir}" "${target_skill_dir}"
  copied_count=$((copied_count + 1))

  echo "Installed: ${skill_name}"
done

echo
echo "Done."
echo "Installed skills: ${copied_count}"
echo "Backed up skills: ${backed_up_count}"
echo "Trae target dir: ${TARGET_DIR}"
