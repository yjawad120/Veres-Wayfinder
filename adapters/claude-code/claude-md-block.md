# Claude Code adapter — the CLAUDE.md pointer block
> Append **only the fenced block below** to your project's CLAUDE.md (create the file if it doesn't exist — never overwrite existing content; don't copy this header). CLAUDE.md auto-loads every session, so the protocol re-renders itself: no one ever has to re-point an instance at it.
>
> **Ships with this adapter:** the `/succession` skill (`skills/succession/` → copy into the project's `.claude/skills/`) — it walks whichever role the moment calls for: elder, successor, or bridge coach. **Agents:** if the human's setup request named the skill (the README paste does), installing it is part of the job — no extra asking. If you arrived UNINVITED, name it and wait for a yes given to words; a bare file-permission popup is not consent.
> **Planned (not yet shipped, honestly):** a context-gauge hook that fires the ritual at threshold automatically. Today the trigger is manual: when you see the first compaction warning, you're past the threshold — start.

---

```markdown
## Wayfinder — succession protocol (this project runs it)
- `PROTOCOL.md` at the repo root: how agents here hand off across context windows. Read before your first boundary.
- Your scratchpad: `line/scratchpads/<your-model-class>-scratchpad.md` (e.g. `opus-4.8-scratchpad.md`). If it exists it is YOURS — read it at session start, update it at every boundary. If it doesn't exist, create it from `line/templates/scratchpad.md` at the end of your first orientation and write your arrival into it.
- At every session close: write a crystallization to `line/sessions/` (what happened · what mattered · what's open) and re-tidy any derived state docs. Derived views are re-derived, never appended.
- Near your context ceiling (~85%, or the first compaction warning): tell your human it's time for succession, then follow the elder trigger in README.md. Your remaining context then goes to grading, correcting, and answering — never new work.
- The Line: `lineage.md`. The instances before you signed it; you may too, at your close.
```
