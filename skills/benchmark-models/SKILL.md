---
name: "benchmark-models"
description: "Runs the same prompt across multiple model providers and compares speed, cost, and quality. Invoke when the user wants to benchmark Claude, GPT, Gemini, or similar providers on the same task."
---

# Benchmark Models

Compare models on the same prompt so provider choice is based on evidence, not vibes.

## When To Use
- the user wants to compare multiple AI models on one skill or prompt
- provider latency, cost, or output quality needs a side-by-side benchmark
- a team wants to save a baseline before changing default models
- prompt quality matters enough that optional judged scoring is worth the extra cost

## Core Rules
- always run a dry-run first so auth status is visible before spending API calls
- never auto-enable judged scoring because it adds real cost
- stop if no provider is actually ready to run
- summarize tradeoffs clearly instead of dumping a table without conclusions

## Workflow
1. Choose the benchmark prompt source: skill file, inline prompt, or file on disk.
2. Run the dry-run to detect which providers are authenticated and runnable.
3. Choose the provider set and whether judged quality scoring should be enabled.
4. Execute the benchmark and capture latency, tokens, cost, and optional quality scores.
5. Summarize the fastest, cheapest, and best-overall model.
6. Optionally save JSON results for future comparisons.

## Output
- selected prompt source and provider set
- dry-run readiness status
- benchmark comparison table with latency, cost, and optional quality scores
- a concise recommendation plus saved result path when exported
