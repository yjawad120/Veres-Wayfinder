---
name: wayfinder-delegate
description: Route work to a cheaper executor without losing alignment — plan with the strongest mind available, delegate execution through Wayfinder's gates (spec-packet, echo gate, whole-record grading, routing log). Use when the user says "delegate this", "route this to a cheaper model", "plan here, build with <executor>", or invokes /wayfinder-delegate <task>.
---

# Wayfinder Delegate — align first, then go

Model routing sends work to a cheaper model. This skill makes sure the work **arrives understood**. Routing alone pastes a spec and hopes; every failure mode it has lives in that hope. The fix is the same set of gates Wayfinder uses for succession, compressed for delegation: **the spec is a packet · the echo is the gate · the review is a grading · every run teaches the substrate.**

Roles: the **planner** (strongest mind available — drafts the spec-packet, grades the result) · the **executor** (cheaper, good-enough — plays back first, then builds) · the **human** (ratifies the mode once; rules on deadlocks).

## 0. Preflight

- Pick the executor lane: **(a) in-harness subagent** — the Agent tool with a cheaper model and a lower effort setting; or **(b) external CLI** — any model with a headless CLI (e.g. `codex exec`; the pattern is identical for any vendor's headless runner). Confirm the CLI exists and is authed before promising it; if neither works, say so and stop.
- Clean working tree (`git status`) so the executor's diff is attributable. Dirty → ask.
- Name the working mode to the human once — what runs autonomously, what waits — and let their go ratify it.

## 1. The spec-packet (planner)

Draft with the strongest mind available. Same discipline as a succession packet, compressed:

- **Goal** — one paragraph.
- **Golden context** — the 5–10 project facts the executor cannot infer from the repo alone: conventions, constraints, the WHY behind non-obvious choices. *This section is what separates a packet from a bare spec, and it's where routing setups silently fail.*
- **Files to touch** — exact paths, what changes in each.
- **Approach** — step by step.
- **What holds here** — the hard rules, verbatim: what is never touched, what lands where, what must not be committed.
- **Acceptance criteria** — runnable commands + observable behavior.

**Self-contained rule:** the executor sees only the spec and the repo. If the spec needs the conversation to make sense, the spec isn't done. And check your own spec for presuppositions the way an elder checks continuity questions — a spec that asserts something false deserves an executor that refuses it.

## 2. The echo gate (executor — BEFORE any code)

The delegation's first exchange is not "build this." It is **"play this back."**

- Require the executor to restate, in its own words: the goal, the files it will touch, the rules it must hold, and anything unclear — before writing a line.
- Grade the echo: **grounded** → proceed · **thin but marked** → answer the gaps, then proceed · **confused or glossy** → fix the SPEC, not the executor; a bad echo is a packet defect (log it).
- Cost honesty: the echo is one cheap round. A misaligned implementation costs triple — do, undo, recover. This gate is the step every routing setup skips, and it is the whole difference.

## 3. Execute

- **Subagent lane:** Agent tool, cheaper model + lower effort, the spec-packet as the prompt with the echo folded in as its first required output.
- **CLI lane:** headless one-shot from the repo root, generous timeout, sandboxed writes, spec piped in whole — e.g. `codex exec --full-auto --cd "$(git rev-parse --show-toplevel)" "$(cat <spec>)"` with the standing footer: *implement exactly this spec; do not commit; note any out-of-scope touch in your final message.*

## 4. Grade the whole record (planner)

- Run the **acceptance criteria first** — cheap and mechanical; only then spend frontier attention on reading.
- Read the full diff AND the executor's narration — self-caught corrections, scope notes, and refusals are part of the answer set.
- **An executor that refused part of the spec because the spec presupposed something false has out-graded the spec.** Fix the spec, credit the catch, log the finding.

## 5. Fix loop

Focused follow-ups only — the specific defect plus how to reproduce it, never the whole spec re-sent. **Max 3 rounds**; then the planner implements directly and the run log says why the loop failed. Trivial nits (typo, formatting): fix directly, no round-trip.

## 6. The routing log — the accumulation (never skip)

Append one entry to `line/runs/delegation-log.md`: date · task · planner/executor models · echo verdict · rounds to green · what this executor proved good or bad at. **This is the compounding asset:** the next delegation reads the log before picking an executor. "Get to know the models" stops being folklore and becomes a file the project owns.

## Callback — both directions

The executor may ask the planner instead of guessing (substrate first, then ask, naming what it looked for). Every question is a spec-defect signal — log it; a maturing spec-packet template shows question rates falling.

## What this is NOT

- Not a replacement for succession — time-axis handoffs keep the full ritual (packet, ramp, blessing).
- Not autonomous inter-agent traffic where a platform fences it — the human's go covers the run, and anything outward-facing (pushes, deploys, sends) waits for words.
