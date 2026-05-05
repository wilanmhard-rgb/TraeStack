---
name: "cso"
description: "Runs a security-first audit across secrets, supply chain, CI/CD, integrations, LLM attack surface, and OWASP-style risks. Invoke when the user wants a read-only security review with severity, exploit paths, and remediation." 
---

# CSO

Audit the repo like a security lead who cares about real exploit paths, not theater.

## When To Use
- the user wants a security audit before shipping, after a breach scare, or during due diligence
- secrets exposure, dependency risk, CI/CD safety, webhook verification, or auth boundaries need review
- the repo uses LLM features and the user wants prompt-injection, tool-call, or unsafe-render checks
- the user wants a read-only security report with severity, confidence, and concrete remediation

## Core Rules
- stay read-only and do not make code or config changes during the audit
- build an architecture and trust-boundary model before naming findings
- prefer verified findings with exploit scenarios over long speculative vulnerability lists
- separate confirmed issues from tentative ones and say exactly what evidence supports each claim
- cover repo code, infra config, CI/CD, integrations, and skill supply-chain risk when they exist
- end with remediation priorities, residual uncertainty, and the standard audit disclaimer

## Workflow
1. Detect the stack, framework, deployment surface, and trust boundaries from the repo.
2. Map the attack surface: endpoints, auth boundaries, secrets locations, infra configs, workflows, and external integrations.
3. Review the highest-risk areas first: leaked secrets, dependency and lockfile risk, CI/CD permissions, webhook verification, auth gaps, SSRF or injection paths, and LLM-specific trust failures.
4. Apply evidence-based filtering so only real or clearly plausible security issues survive into the report.
5. Write a security posture report with severity, confidence, exploit path, impact, and the most practical remediation order.

## Output
- architecture and attack-surface summary
- prioritized findings grouped by severity and confidence
- exploit scenario and evidence for every reported issue
- remediation roadmap, quick wins, and follow-up verification advice
- explicit disclaimer that the audit is useful but not a substitute for a professional security engagement
