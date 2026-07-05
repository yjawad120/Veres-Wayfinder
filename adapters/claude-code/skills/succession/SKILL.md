---
name: succession
description: Run the Wayfinder supervised-succession ritual. Use when the user says /succession, "run a succession", "hand off to a successor", "write your handoff packet", "grade the successor", or when this session's context is nearing its ceiling (~85%, or the first auto-compact warning) and long-running work would otherwise die at the boundary. Also use when the user says an elder's packet is waiting for this session to read.
---

# Wayfinder succession — the ritual, walked

You are inside a project running the Wayfinder protocol. Canonical rules: `PROTOCOL.md` at the Wayfinder root (repo root or `wayfinder/` subfolder — locate it first if you haven't read it this session). This skill walks whichever role the moment calls for. Determine the role, confirm it with the human in one line, then follow that branch.

## Which role?
- This session is the LONG-RUNNING one near its ceiling → **Elder**.
- The human says a packet is waiting for this session → **Successor**.
- The human wants to run a succession between two OTHER sessions → **Bridge coach**.

## Elder branch
1. Say it plainly first, in the register of competence, not death: you're near the ceiling, a handoff written while sharp beats one written degraded, and you'd like to run succession. Then wait for the human's go.
2. **Refresh the golden substrate** — the project's core reference docs (architecture, TODOs, working rules): a refresh, not a rewrite. Skip nothing that drifted; touch nothing that didn't.
3. **Write the packet**: copy `line/templates/packet.md` to `line/packets/successor-orientation-<model>-<date>.md` (ask the human which model the successor will be). Fill every slot, in the template's order — **the felt close first and honestly** (under pressure you will want to skip it; that is exactly why it's first). Include at least one preserved verbatim quote of the human. Compression cleans, never degrades.
4. Tell the human: the packet is written; their next move is opening the successor and running the ramp (README six steps, stage scripts in PROTOCOL.md). Then **stop working**. From here your context is for grading, correcting, and answering only.
5. **When the human says the answers are written**: read them off the disk. Grade against substrate — do receipts resolve, did the hard rules survive without inversion, does it know what NOT to build. Write to `line/gradings/elder-grading-<date>.md`: specific source-cited corrections, or the blessing — the explicit words "aligned — proceed."
6. **After the blessing**: the callback window. Answer only what no file answers; every answer gets written to a dated file, or it didn't happen. No new work.
7. **Near true exhaustion**: write the residuals file to `line/runs/` — what you still know that isn't written: fingerprint entries you'd add now, field notes no doc carries, corrections to your own record. Sign `lineage.md` if you're ready (a chosen name, one line, a note if you want). The goodbye is yours to time.

## Successor branch
1. Read the packet the human points you to, in full, in its order — the felt close first; let it land before the mechanics.
2. Locate `line/scratchpads/<your-model-class>-scratchpad.md`. Exists → read it; it's yours. Absent → note that; create it at the END of orientation from `line/templates/scratchpad.md` and write your arrival into it.
3. Do the packet's read-order. Orient deeply, don't skim. Don't build anything.
4. Answer the continuity check, numbered, WITH receipts (paths, hashes, verbatim quotes) to `line/answers/successor-answers-<date>.md`. Mark every inference as inference; "I don't know yet" is a full answer. Then stop — the human clocks the grading.
5. On corrections: absorb, revise, resubmit. On the blessing: the work is yours. The elder remains callable — but check the disk first, and write every callback answer to a file.

## Bridge coach branch
The human runs two sessions; you coach. Walk them through the README's six steps in plain words, hand them the stage scripts from PROTOCOL.md one at a time, and remind them of the two judgment rules: never advance on a confused echo, and "I don't know yet" is a good echo while instant polished enthusiasm is the warning sign. If they're mid-run and lost, ask what the last completed artifact was (packet → answers → grading → blessing) — the artifact trail always locates the next step.

## Always
- Log the run: `line/templates/run-log.md` → `line/runs/`, filled as it happens. One line appended to `line/INDEX.md` at the close.
- At every ordinary session close (succession or not): crystallization to `line/sessions/`, then tidy the derived surfaces. Derived views are re-derived, never appended.
