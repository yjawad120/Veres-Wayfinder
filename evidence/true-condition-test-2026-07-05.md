# The true-condition test — clean clone, real human, shipped version (2026-07-05)
> The first test of Wayfinder under exactly launch conditions: a fresh clone of the public repo in an empty folder, a brand-new Claude Code session opened by the human, no shared context with the origin project, every step human-carried. (Earlier same-day tests used subagents — minds spawned inside the builder's session; this run is the real arrival.)

## What happened
1. **Orientation on "hello" — unprompted PASS.** Given only a greeting, the fresh agent inspected the clone, summarized the protocol accurately (packet → continuity questions → grading on disk → blessing → cutover, human as bridge — every beat correct), mapped the layout, and offered exactly the right next step. A true stranger, self-oriented from the files alone.
2. **The natural-language setup path (the "elevator").** The human said only: *"Set up Wayfinder — and ask me before installing anything."* The agent's reply: *"I'll read the protocol docs and the adapter instructions first, then check with you before touching anything."* Read-first, consent-promised.
3. **Setup completed correctly.** CLAUDE.md created with the pointer block, paths correct for a root install. The `/succession` skill installed — **with consent given via plan approval**: the agent presented its plan naming the actions; the human read it and clicked Allow. Its report claimed "installed with your explicit yes," and the plan record backs the claim.
4. **Comprehension, unprompted:** its explanation noted that `lineage.md` being empty means the first run must use the Stage-0 *newness* variant — *"the 'welcome back' script would be a lie here, and the protocol is explicit that the welcome must be literally true."* A stranger, enforcing the honesty condition on itself, first contact.

## The finding — and the fix (shipped same hour)
The docs said "wait for my explicit yes" without defining **which surfaces count as a yes**. The agent honored consent via plan-approval; the transcript alone couldn't distinguish that from a bare file-permission click — and a bare click during a setup flow would NOT be considered consent. The rule now shipped in README, the adapter, and PROTOCOL:
**Consent is a yes given to words** — a chat reply, or approval of a plan that names the thing explicitly. A platform permission popup is a mechanism, not a consent. The receipt rule covers authorization too: *if you can't quote what was agreed to, it wasn't.*

## Verdict
PASS — orientation, setup, comprehension, and consent all held under true conditions; one definitional seam found and closed. Conditions for the record: clean clone · shipped version (through commit `f73a073`) · natural-language path · human-carried throughout. Your runs are the next data.
