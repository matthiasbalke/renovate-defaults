# renovate-defaults
renovate default configuration shared across multiple projects

## Usage

In your repository's `.github/renovate.jsonc`:

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["github>matthiasbalke/renovate-defaults"]
}
```

## Validation

```bash
bun run validate
```

Or use the shell wrapper:

```bash
./validate.sh
```
