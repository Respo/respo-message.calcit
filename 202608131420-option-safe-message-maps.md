# Option-safe message map access

Calcit 0.13.14 makes `get` return `Option`, so this module now explicitly
provides defaults for optional message-map fields and only reads remove-action
payload fields inside the `remove-one` branch. This preserves the existing
Map-based public API (including `nil` payloads for `clear`) while making the
new missing-value behavior explicit. The CI workflow now runs `--check-only`
before JavaScript code generation to block future Option misuse.
