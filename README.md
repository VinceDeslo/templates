# Templates

These templates are intended to set up boilerplate so that I can quickly spin up some personal dev environments when playing around with tech.

### Setup

```bash
# Scaffold Rust boilerplate
nix flake init -t 'github:VinceDeslo/templates#rust-base'

# Scaffold Go boilerplate
nix flake init -t 'github:VinceDeslo/templates#go-base'

# Scaffold Zig boilerplate
nix flake init -t 'github:VinceDeslo/templates#zig-base'
```

### Long term

The idea is to eventually build a custom CLI that acts as my personal local dev portal.

### Maintenance

These flakes currently don't pin any specific versions of the toolchains, the goal is to be up to date with latest stable every time I init a new flake.
