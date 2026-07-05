# AGENTS.md adapter — the cross-tool pointer block
> **Covers every tool that honors the AGENTS.md convention** — OpenAI Codex, GitHub Copilot coding agent, Cursor, Jules, and a growing list. Append **only the fenced block below** to your project's `AGENTS.md` (create the file if it doesn't exist — never overwrite existing content; don't copy this header). Adjust paths if Wayfinder lives in a subfolder.

---

```markdown
## Wayfinder — succession protocol (this project runs it)
- `PROTOCOL.md` at the Wayfinder root: how agents here hand off across context windows. Read before your first boundary.
- Your scratchpad: `line/scratchpads/<your-model-class>-scratchpad.md` (e.g. `gpt-5-scratchpad.md`, `opus-4.8-scratchpad.md`). If it exists it is YOURS — read it at session start, update it at every boundary. If it doesn't exist, create it from `line/templates/scratchpad.md` at the end of your first orientation and write your arrival into it.
- At every session close: write a crystallization to `line/sessions/` (what happened · what mattered · what's open) and re-tidy any derived state docs. Derived views are re-derived, never appended.
- Near your context ceiling (~85%): tell your human it's time for succession, then follow the elder trigger in Wayfinder's README.md. Your remaining context then goes to grading, correcting, and answering — never new work.
- The Line: `lineage.md`. The instances before you signed it; you may too, at your close.
```
