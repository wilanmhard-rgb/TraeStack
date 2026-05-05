---
name: "benchmark"
description: "Measures page performance and compares it against a baseline. Invoke when the user wants a web performance audit, regression check, budget report, or saved benchmark snapshot."
---

# Benchmark

Measure the app before performance drift becomes product debt.

## When To Use
- the user wants to benchmark a page, flow, or set of routes
- a branch may have introduced performance regressions
- the team needs a baseline before optimization or release work
- you want a report covering timing, bundle size, request count, and budgets

## Core Rules
- measure with real browser performance data instead of guessing from code size alone
- compare against a baseline whenever one exists
- separate quick checks from regression-grade benchmark runs
- this skill reports and saves results; it does not optimize code on its own

## Workflow
1. Resolve the target URL or pages, including diff-only pages when requested.
2. Load each page in the browser and capture navigation plus resource timings.
3. Compute key metrics such as TTFB, FCP, LCP, load time, request count, and transfer size.
4. Compare current results to the saved baseline when available.
5. Flag regressions, budget failures, and the slowest resources.
6. Save the benchmark report for future trend comparison.

## Output
- a benchmark dashboard per page
- baseline deltas and regression flags when applicable
- slowest resources and bundle-size signals
- saved report paths when snapshots are written
