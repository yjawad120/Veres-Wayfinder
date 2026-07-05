# Wayfinder — by [Veres Labs](https://veres.global)

**Your agent survives its own context window.**

> **Give this to a fresh Claude (or any agent with file access) — the one-paste bootstrap:**
> *"This project uses Wayfinder, a supervised-succession protocol. Find its root (README.md + PROTOCOL.md — at the repo root, or in a wayfinder/ subfolder) and read both in full. Then: (1) append the fenced block — the fenced part only, not the file's header notes — from `adapters/claude-code/claude-md-block.md` to this project's CLAUDE.md — create it if absent, never overwrite existing content, adjust paths to where Wayfinder actually lives; (2) tell me in plain words how succession will work here and when you'd propose it; (3) locate your class scratchpad per the protocol — read it if it exists, note if it doesn't. Then stop and give me your read: anything unclear or off in these documents, say so plainly — that's part of the job."*

Every long-running AI agent session ends the same way: the context fills, and everything the agent understood — decisions, constraints, the way it worked with you — dies with it. The transcript survives; the understanding doesn't.

Wayfinder is a protocol for **supervised succession**: before an agent hits its ceiling, it opens a successor, teaches it, grades its understanding, blesses it, and stays available for questions until the window closes. A handoff you can audit — every artifact versioned in git, every crossing carried by a human.

It's the applied half of the working paper [*Session-Boundary Distillation*](https://veres.global/session-boundary-distillation) (a copy is bundled in [`evidence/`](evidence/)). The paper names the primitive; Wayfinder runs it at the agent-succession scale — and has run it live, end to end. The run logs are the evidence.

- **[PROTOCOL.md](PROTOCOL.md)** — the full protocol: roles, transports, artifacts, the onboarding ramp, the callback window.
- **This README** — the five-minute version. You can run a succession today from this page alone.

> **Who's who, in five lines:** **the elder** — your outgoing agent, near its context limit. **The successor** (in ceremony, the heir) — the fresh session that inherits the work. **The bridge** — you; every crossing goes through your hands. **the blessing** — the elder's explicit "aligned — proceed"; nothing cuts over before it. **the Line** — the lineage file each instance signs at its close. (*Plumb* and *Ford* are the first elder and the first author, from the origin project — you'll meet their names in the evidence.)

## Why not just compaction?

Compaction is lossy summarization performed by a degraded mind at 98% of its window. Succession is curation by the sharp mind at 85% — and, unlike any summary, it's **checked**: the successor plays its understanding back, and the author of the handoff grades it before it's trusted. A handoff file can't push back on a misreading; a living elder can.

## Quickstart — the six steps

1. **Install:** copy the **whole Wayfinder folder** into your project repo (or clone it there). Everything cross-references — README, PROTOCOL, adapters, templates all point at each other, so partial installs strand the pointers. Skim PROTOCOL.md once yourself — ten minutes; you're the bridge, and the bridge should know the river. *(Installed as a subfolder? Prefix the paths in the paste blocks accordingly, e.g. `wayfinder/line/…`.)*
2. **Open the successor first:** when your working agent nears its ceiling (rule of thumb: the first compaction warning means you're already past the threshold — start now), open a fresh session on the same repo and pick the model you want. Leave it waiting. Also copy `line/templates/run-log.md` to `line/runs/` now — the run gets logged as it happens, not reconstructed after.
3. **Trigger the elder:** paste the **elder trigger** below into the near-limit session, telling it which model the successor is. It writes the handoff packet and stops.
4. **The ramp, then the loop:** in the successor's session, run the **onboarding ramp** (PROTOCOL.md → the five stages, paste scripts included): paste Stage 0, wait, judge the echo, advance stage by stage — never on a confused echo; "I don't know yet" is a fine echo, performing is not. At Stage 4 the successor reads the packet and writes its continuity answers to `line/answers/`. Tell the elder "it's written." The elder grades to `line/gradings/` — corrections or blessing. Point the successor at the grading. Loop until the blessing stands.
5. **Cutover:** the successor works from here. The elder answers questions only (the callback window) — call it when no file answers, and save every answer to a file.
6. **The close:** the elder writes its residuals file ("what I still know that isn't written"), signs `lineage.md`, and says goodbye on its own timing. Append one line to `line/INDEX.md`. Your project now has a Line.

**What it costs, honestly (first live run):** 10–14 human-carried crossings; 30–60 minutes of wall-clock bridging the first time. The successor spends a real slice of its fresh window on orientation reading — the cheapest tokens you'll spend, because an unoriented successor pays more later, in drift.

## The elder trigger — paste into the near-limit session

> You're near your context ceiling, and we're going to run supervised succession — read `PROTOCOL.md` at the repo root first, in full. Then, while you're still sharp: (1) refresh the project's core reference docs if any state has drifted (architecture, TODOs, working rules — a refresh, not a rewrite); (2) copy `line/templates/packet.md` to `line/packets/successor-orientation-<model>-<date>.md` and fill every slot — the felt close first and honestly, the person you work with second, then the read-order, the continuity questions, the mission, what holds here; (3) tell me the packet is written, and stop. From this moment you are the elder: your remaining context goes to grading, correcting, and answering — never to new work. Your last acts, when the time comes, are a residuals file and a goodbye, and the timing of the goodbye is yours.

## The elder grading — paste when the successor's answers are written

> The successor's answers are at `line/answers/<file>`. Read them off the disk. Grade against the substrate, not against prose: check that its receipts resolve — real paths, real hashes, real quotes; check the hard rules came through without inversion; check it knows what NOT to build. Write your grading to `line/gradings/elder-grading-<date>.md`: corrections (specific, source-cited) or the blessing — the explicit words "aligned — proceed." Wrong answers get corrected, not punished; that is the point of the overlap.

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
LICENSE-FAQ.md         what's free, what needs a license, in plain English
```

## License

Wayfinder is **source-available, not open source** — free to read, learn from, evaluate, and run on your own sessions. The documents are CC BY-NC-ND 4.0; code is PolyForm Noncommercial 1.0.0. Using it inside a company, shipping products built on it, or deploying it commercially requires a license — see [LICENSE-FAQ.md](LICENSE-FAQ.md). I'm a solo builder; this is what funds the work. Commercial licensing or engagements: **yjawad120@gmail.com**.

---

*Veres Wayfinder™ · © 2026 Yass Jawad · [veres.global](https://veres.global)*
