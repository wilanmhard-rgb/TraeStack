# TraeStack Office Hours (Repository Structure / Capability Boundaries / Runtime Dependencies)

## Goal

Converge this repository into a TraeStack-specific skills adaptation layer that only handles:

- adaptation-layer changes: naming, directories, routing, documentation, and consistency checks
- capability convergence: clarifying what belongs to the Trae platform versus what is provided by this repository as skill definitions
- boundary hardening: no changes to the underlying core execution logic or existing workflows, only skill packaging and discoverability

## Current Repository Structure

- `README.md`: repository-level overview
- `skills/`: Trae-discoverable skill definition collection
  - `skills/<skill-name>/SKILL.md`: declaration and usage constraints for each skill
  - `skills/README.md`: skill index table
  - `skills/ROUTING.md`: recommended routing by scenario
  - `skills/NAVIGATION.zh-CN.md`: Chinese navigation
  - `skills/DELIVERY-SUMMARY.md`: delivery summary

## Capability Boundaries (What This Repository Owns and What It Does Not)

### Owned by This Repository

- the skill definition layer: `name`, `description`, usage conditions, rules, workflows, and output shape in each `SKILL.md`
- routing and information architecture: consistency across `ROUTING.md`, `NAVIGATION.zh-CN.md`, and `skills/README.md`
- adaptation and closure: unified naming, path wording, and terminology, plus residue scanning and consistency validation

### Not Owned by This Repository (and Not Changed in This Work)

- the underlying core execution logic: actual tool execution, browser driving, network scraping, deployment, account integration, and other runtime capabilities
- the original workflow implementations: flows described inside skills are guidance, not implementations in this repository

## Runtime Dependencies (External Conditions Required for Stable Invocation)

- Trae IDE / Trae Agent Runtime: responsible for skill discovery, routing, and tool orchestration
- Trae built-in tool integrations: such as browser capabilities, terminal execution, diagnostics, Supabase, Stripe, and others depending on the skill description
- this repository only needs to guarantee that `skills/<name>/SKILL.md` formatting and naming are correct, preventing mismatches between directory names and skill names that could break discovery or routing

## Risks and Constraints

- full naming migration can affect historical calling habits: the external entry surface must converge to the `traestack` naming system without losing capability
- documentation and routing must stay synchronized: any rename must update `SKILL.md` frontmatter, directory names, indexes, and navigation together

## Delivery Scope for This Iteration

- unify all external entry naming under `traestack`
- only change the skill packaging layer, documentation, routing, and validation scripts; do not introduce any changes to underlying execution logic
