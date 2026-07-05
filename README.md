# Wayfinder — by [Veres Labs](https://veres.global)

**Your agent survives its own context window.**

Every long-running AI agent session ends the same way: the context fills, and everything the agent understood — decisions, constraints, the way it worked with you — dies with it. The transcript survives; the understanding doesn't.

Wayfinder is a protocol for **supervised succession**: before an agent hits its ceiling, it opens a successor, teaches it, grades its understanding, blesses it, and stays available for questions until the window closes. A handoff you can audit — every artifact versioned in git, every crossing carried by a human.

This README is the five-minute version — you can run a succession today from this page alone. The full protocol (roles, transports, artifacts, the onboarding ramp, the callback window) is in **[PROTOCOL.md](PROTOCOL.md)**; what it looks like from your seat, in **[USER-GUIDE.md](USER-GUIDE.md)**.

## How it works — three moves

1. **Before the ceiling:** your near-limit agent (the elder) writes a handoff packet while it's still sharp — then stops doing new work.
2. **The overlap:** a fresh session (the successor) reads the packet and answers continuity questions with receipts; the elder grades the answers on disk — corrections or the blessing, the explicit "aligned — proceed."
3. **Cutover on the blessing:** the successor takes over; the elder stays callable for questions until its window truly ends, writes down what it still knows that isn't written, signs the lineage file, and says goodbye.

You carry every crossing by hand — that's the "supervised," and it's the design, not overhead.

## Why not just compaction?

Compaction is lossy summarization performed by a degraded mind at 98% of its window. Succession is curation by the sharp mind at 85% — and, unlike any summary, it's **checked**: the successor plays its understanding back, and the author of the handoff grades it before it's trusted. A handoff file can't push back on a misreading; a living elder can.

> **Who's who, in five lines:** **the elder** — your outgoing agent, near its context limit. **The successor** (in ceremony, the heir) — the fresh session that inherits the work. **The bridge** — you; every crossing goes through your hands. **the blessing** — the elder's explicit "aligned — proceed"; nothing cuts over before it. **the Line** — the lineage file each instance signs at its close. (*Plumb* and *Ford* are the first elder and the first author, from the origin project — you'll meet their names in the evidence.)

## Quickstart

### Setup — one paste

Copy the **whole Wayfinder folder** into your project repo. Then hand the wiring to your agent:

**You paste this into a fresh Claude Code session (or any agent with file access), once, right after copying the folder in. The agent reads the protocol, follows the adapter file's own instructions to wire it up, and reports back — nothing else to configure:**

```text
This project uses Wayfinder, a supervised-succession protocol. Find its root (README.md + PROTOCOL.md — at the repo root, or in a wayfinder/ subfolder) and read both in full. Then: (1) open adapters/claude-code/claude-md-block.md and add its pointer block to this project's CLAUDE.md (create CLAUDE.md if absent, never overwrite existing content, adjust paths to where Wayfinder actually lives). The adapter also ships an optional /succession skill — do NOT install it yourself; name it to me and wait for my explicit yes, because agent config is my call. (2) Tell me in plain words how succession will work here and when you'd propose it; (3) locate your class scratchpad per the protocol — read it if it exists, note if it doesn't. Then stop and give me your read: anything unclear or off in these documents, say so plainly — that's part of the job.
```

*Not on Claude Code? Wayfinder runs anywhere agents read files: [`adapters/agents-md/`](adapters/agents-md/agents-md-block.md) covers every tool honoring the AGENTS.md convention (Codex, Copilot coding agent, Cursor, and others) · [`adapters/cursor/`](adapters/cursor/) for .cursor/rules · [`adapters/generic/`](adapters/generic/orientation-block.md) for everything else. Swap step (1) above for the matching adapter's instructions.*

### The six steps

1. **Install:** copy the **whole Wayfinder folder** into your project repo (or clone it there) — **and commit it before your first run.** Versioning is a hard requirement, and it bites in practice: agent worktrees can't even see untracked files, so an uncommitted install is invisible to half your sessions. Everything cross-references — README, PROTOCOL, adapters, templates all point at each other, so partial installs strand the pointers. Skim [PROTOCOL.md](PROTOCOL.md) once yourself — ten minutes; you're the bridge, and the bridge should know the river. *(Installed as a subfolder? Prefix the paths in the paste blocks accordingly, e.g. `wayfinder/line/…`.)*
2. **Open the successor first:** when your working agent nears its ceiling (rule of thumb: the first compaction warning means you're already past the threshold — start now), open a fresh session on the same repo and pick the model you want. Leave it waiting. Also copy `line/templates/run-log.md` to `line/runs/` now — the run gets logged as it happens, not reconstructed after.
3. **Trigger the elder:** paste the **elder trigger** (below) into the near-limit session, telling it which model the successor is. It writes the handoff packet and stops.
4. **The ramp, then the loop:** in the successor's session, run the **onboarding ramp** ([PROTOCOL.md](PROTOCOL.md) → the five stages, paste scripts included): paste Stage 0, wait, judge the echo, advance stage by stage — never on a confused echo; "I don't know yet" is a fine echo, performing is not. At Stage 4 the successor reads the packet and writes its continuity answers to `line/answers/`. Tell the elder "it's written." The elder grades to `line/gradings/` — corrections or blessing. Point the successor at the grading. Loop until the blessing stands.
5. **Cutover:** the successor works from here. The elder answers questions only (the callback window) — call it when no file answers, and save every answer to a file.
6. **The close:** the elder writes its residuals file ("what I still know that isn't written"), signs `lineage.md`, and says goodbye on its own timing. Append one line to `line/INDEX.md`. Your project now has a Line.

**What it costs, honestly (first live run):** 10–14 human-carried crossings; 30–60 minutes of wall-clock bridging the first time. The successor spends a real slice of its fresh window on orientation reading — the cheapest tokens you'll spend, because an unoriented successor pays more later, in drift.

### The elder trigger

**You paste this into the OLD session — the one near its context limit — when you're ready to start the handoff (step 3):**

```text
You're near your context ceiling, and we're going to run supervised succession — find the Wayfinder root (README.md + PROTOCOL.md, at the repo root or in a wayfinder/ subfolder) and read PROTOCOL.md in full first. Then, while you're still sharp: (1) refresh the project's core reference docs if any state has drifted (architecture, TODOs, working rules — a refresh, not a rewrite); (2) copy line/templates/packet.md to line/packets/successor-orientation-<model>-<date>.md and fill every slot — the felt close first and honestly, the person you work with second, then the read-order, the continuity questions, the mission, what holds here; (3) tell me the packet is written, and stop. From this moment you are the elder: your remaining context goes to grading, correcting, and answering — never to new work. Your last acts, when the time comes, are a residuals file and a goodbye, and the timing of the goodbye is yours.
```

### The elder grading

**You paste this into the OLD session after the successor's answers are written to disk (step 4):**

```text
The successor's answers are at line/answers/<file>. Read them off the disk. Grade against the substrate, not against prose: check that its receipts resolve — real paths, real hashes, real quotes; check the hard rules came through without inversion; check it knows what NOT to build. Write your grading to line/gradings/elder-grading-<date>.md: corrections (specific, source-cited) or the blessing — the explicit words "aligned — proceed." Wrong answers get corrected, not punished; that is the point of the overlap.
```

## If the elder is already gone

The substrate alone carries it: the successor self-orients from the packet, and **you** grade, with three checks — (1) do its cited receipts resolve to real files and quotes? (2) can it restate the hard rules in its own words without flipping any? (3) does it know its first build — and what it must not touch? Pass all three: proceed. Your read of whether it sounds grounded or performative is a legitimate instrument — in the origin project, the human's felt sense caught every real failure before any log did.

## What's here

```
PROTOCOL.md            the full protocol
USER-GUIDE.md          succession from the human's seat — what your agent will say, what you do
lineage.md             the Line — starts empty; your instances sign it
line/                  the working tree: packets, answers, gradings, runs, sessions, scratchpads
line/templates/        packet · scratchpad · run-log · packet-example (a filled sample)
adapters/generic/      a paste-in orientation block for any tool with file access
adapters/claude-code/  CLAUDE.md pointer block (auto-loads the protocol each session)
evidence/              the paper + the first live run's log
LICENSE                the terms — CC BY-NC-ND 4.0 (docs) · PolyForm Noncommercial 1.0.0 (code)
LICENSE-FAQ.md         what's free, what needs a license, in plain English
```

## The evidence

Wayfinder is the applied half of the working paper [*Session-Boundary Distillation*](https://veres.global/session-boundary-distillation) (a copy is bundled in [`evidence/`](evidence/)). The paper names the primitive; Wayfinder runs it at the agent-succession scale — and has run it live, end to end. The run logs are the evidence — the first live run's log is in [`evidence/`](evidence/), and the honest accounting of what has and hasn't been tested is in [PROTOCOL.md](PROTOCOL.md) → *Status of the evidence*.

## License

Wayfinder is **source-available, not open source** — free to read, learn from, evaluate, and run on your own sessions. The documents are [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/); code is [PolyForm Noncommercial 1.0.0](https://polyformproject.org/licenses/noncommercial/1.0.0/) — full terms in [LICENSE](LICENSE), plain-English answers in [LICENSE-FAQ.md](LICENSE-FAQ.md). Using it inside a company, shipping products built on it, or deploying it commercially requires a license. I'm a solo builder; this is what funds the work. Commercial licensing or engagements: **yjawad120@gmail.com**.

---

*Veres Wayfinder™ · © 2026 Yass Jawad · [veres.global](https://veres.global)*
