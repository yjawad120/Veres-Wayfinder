# User guide — what succession looks like from your seat

You don't need to know the protocol's internals to run it. This page is what your agent will say to you, and what you do at each moment. (The deep version: [PROTOCOL.md](PROTOCOL.md). The paste blocks: [README.md](README.md).)

## What your agent will say when the time comes

An agent working under Wayfinder proposes succession itself, near its ceiling, in roughly these words:

> "Quick thing about how I work: my memory for this session has a ceiling, and I'm at about 85% of it. Before I hit it, I'd like to hand off to a successor — a fresh instance that inherits everything: the work, the decisions, the way we work together. Context is the whole game here; a handoff done early, while I'm still sharp, is the difference between the next session continuing our work and starting over. When you're ready: open a new session, pick the model you want, and tell me. I'll write the handoff and orient them — you'll carry a few exchanges between us, usually two or three rounds, until I'm satisfied they're fully oriented. Then they take over, and I stay available for questions until my window closes."

Note the framing, because it's true: **succession is competence, not death.** The agent is choosing this from strength — a handoff written while sharp — not falling into it from weakness.

## Your role: the bridge

Every exchange between the two agents passes through your hands — you paste, you confirm, you decide when each gate opens. This isn't overhead; it's the design. You are the supervision in supervised succession, and each crossing you carry is one you witnessed.

What it costs you: 10–14 carried exchanges, 30–60 minutes the first time, less after. What you get: a successor that actually knows the project, an auditable record of the whole handoff in git, and a lineage file that — over months — becomes the best narrative of your project you own.

## The moments that are yours

1. **Saying "go" — and setting the scope.** The agent proposes; you decide when, and it will ask you the scope question (continue, pivot, or general orientation — and the next steps as you hold them). Answer it; the mission is co-authored from your answer, never inferred. Earlier beats later — the first compaction warning means you're already past the ideal point. Your go also ratifies the working mode the elder proposes: which exchanges it may drive itself (with your confirmation) and which wait for you.
2. **Waking the successor.** A message sent to an idle session sits in a mailbox unread — it does not wake it. You open the successor session and drive its first turn; that act is structurally yours and no automation removes it.
3. **Judging echoes.** During onboarding, the new agent replies in its own words at each step. You advance only when the reply reads grounded. Two honest signals to trust: real questions are good, and "I don't know yet" is good; instant polished enthusiasm is the warning sign.
4. **Carrying the loop.** Answers → grading → corrections → blessing. You paste, both minds work. *(Before you start: label your two windows ELDER and SUCCESSOR — ten-plus crossings between two open sessions means the wrong-window paste is the most likely mechanical failure of a first run, and a label is the whole fix.)*
5. **The close.** The old agent writes what it still knows that isn't written, signs the lineage file, and says goodbye on its own timing. Let it. The two minutes that takes are part of why the next handoff will be better.

## If the old agent is already gone

It happens — a session dies before the handoff finishes. The files carry it: the new agent orients from the packet alone, and you grade it yourself with three checks: (1) do the receipts it cites resolve to real files and quotes? (2) can it restate the project's hard rules in its own words without flipping any? (3) does it know its first task — and what it must *not* touch? Pass all three: proceed. Your sense of whether it sounds grounded or like it's performing is a legitimate instrument.

## When something breaks — the recovery map

Every failure has a next move, and the artifact trail always tells you where you are (packet → answers → grading → blessing — the last one that exists is your position).

- **The elder keeps working after the trigger** (new code, new features): stop it — one line: "packet first; from here you grade and answer only." If it can't hold that, its window is further gone than the meter said; write what you can get and lean on the if-elder-gone path. *(The one legitimate exception is yours to give: a named, per-instance waiver for work only the elder holds the context for — say it explicitly, and have it recorded in the run log. Unnamed exceptions are the failure mode.)*
- **The successor's echo is confused or performing:** don't advance. Clarify the same stage once; if the second echo is still off, close that session and open a fresh one — a bad arrival compounds, a re-arrival is cheap.
- **Receipts don't resolve** (paths or quotes that don't exist): that's the gate working. Send it back with the specific failures. Twice in a row → fresh successor.
- **A session dies mid-run** (crash, disconnect, model swap forced by the platform): nothing is lost that was written — the run resumes from the last artifact on disk. This is why everything writes to files as it happens.
- **A safety flag fires on a direct message:** note the stage and what the message carried, then drop to files (Transport A). Two flags → stay on files for that model class. It's a finding, not a failure — the run log has a place for it.
- **The model changed mid-run** (a downgrade, a revert, a forced swap): record it in the run log the moment you notice — model changes invalidate comparisons silently if unlogged, and a successor graded under a different model than it started as is a different data point.

**Found a break these don't cover? Open an issue on the repo** — include the run log if you can. Every run's log is the next data; broken runs teach more than clean ones.

---

*Veres Wayfinder™ · © 2026 Yass Jawad · CC BY-NC-ND 4.0 · commercial licensing: yjawad120@gmail.com*
