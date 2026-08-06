# Ultimagica Tome development guidance

## Project scope

- This repository is a data pack for Minecraft Java Edition 1.21.11.
- Keep function paths and resource locations compatible with the current pack format. Use the singular `function` directory used by this repository.
- Treat the existing implementation as the source of truth. Inspect related functions and callers before changing behavior.

## Communication

- Communicate with the user in Japanese.
- Lead with the result or the concrete finding, then give only the details needed to review it.
- During tool-heavy work, provide short progress updates and state any important assumption.
- If Minecraft itself was not used to test the change, explicitly report that runtime verification is still pending.

## Protect existing work

- Start every implementation task by checking `git status --short --branch`.
- Treat every pre-existing modification, deletion, and untracked file as user-owned work.
- Do not overwrite, discard, stage, or commit unrelated user changes.
- Stage explicit paths. Do not use `git add .` when unrelated changes are present.
- Do not use destructive Git commands such as `git reset --hard` or `git checkout --` unless the user explicitly requests them.
- Do not stash, merge, rebase, push, or amend commits unless the task requires it or the user asks for it.

## Branch workflow

- Create a dedicated branch for a large task or a distinct outcome before editing.
- Continue on the current task branch for small follow-up changes to the same outcome.
- Name branches for the work, using prefixes such as `feature/`, `fix/`, `refactor/`, `balance/`, or `chore/`.
- Do not use `codex/` as a branch prefix.
- Prefer starting independent work from `main`. If existing user changes make switching unsafe, preserve them and choose a non-destructive alternative rather than forcing the switch.

## Commit workflow

- Split work into logical commits that can be reviewed independently.
- Keep shared infrastructure or refactoring separate from the gameplay change that consumes it when that separation is meaningful.
- Before each commit, inspect the staged diff and confirm that it contains only the intended files.
- Use concise commit subjects with an appropriate prefix such as `feat:`, `fix:`, `refactor:`, `balance:`, or `chore:`.
- Do not mix unrelated cleanup into a requested change.

## Implementation conventions

- Use `rg` or `rg --files` to find definitions, callers, tags, objectives, and function IDs before editing.
- Prefer shared lifecycle functions over duplicating setup and cleanup across attacks.
- Keep FSM state transitions behind `player_manager:fsm` functions. Avoid external reads or writes of internal transition fields in `player:context`.
- When an attack can be canceled, route cleanup through the attack/FSM cancellation lifecycle instead of checking internal transition state from unrelated functions.
- Any tag, attribute modifier, summoned object, or `action_block` added by a state must have an explicit, owner-scoped cleanup path.
- Add and remove `action_block` entries at committed FSM lifecycle points, not when a transition is merely requested. Make cleanup safe to call more than once.
- Do not reintroduce `HardCoolTime` or `SoftCoolTime`. Use `action_block` for action restrictions, and represent attack recovery by extending the end time of `attack_main`.
- For timers used outside an FSM state, use an independently ticked lifecycle; do not reuse a state-owned duration whose tick/exit functions will not run.
- Reuse existing common functions and visual effects when the requested behavior should match an existing mechanic.

## Verification

- Run `git diff --check` on the intended change.
- Search for obsolete references after migrations and confirm every new function ID, tag, and scoreboard objective has a definition and lifecycle.
- Review both the focused diff and `git status` before committing.
- When practical, verify the data pack with `/reload` and inspect the Minecraft log for parsing or missing-function errors.
- For gameplay changes, report the exact scenarios that were tested, including normal, charged, held, canceled, or interrupted variants when relevant.
- Never claim Minecraft runtime behavior was verified from static inspection alone.

## Completion report

- Report the branch name, commit hashes and subjects, checks performed, and any remaining runtime verification.
- Confirm that unrelated user changes were preserved.
- Do not merge or push the branch unless the user explicitly requests it.
