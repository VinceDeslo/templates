# Templates

These templates are intended to set up boilerplate to quickly spin up some personal dev environments when playing around with tech.

### Setup

```bash
# Scaffold Rust boilerplate
nix flake init -t 'github:VinceDeslo/templates#rust-base'

# Scaffold Go boilerplate
nix flake init -t 'github:VinceDeslo/templates#go-base'

# Scaffold Python boilerplate
nix flake init -t 'github:VinceDeslo/templates#python-base'

# Scaffold Zig boilerplate
nix flake init -t 'github:VinceDeslo/templates#zig-base'

# Scaffold Infra boilerplate
nix flake init -t 'github:VinceDeslo/templates#infra-base'
```

### Long term

The idea is to eventually build a custom CLI that acts as my personal local dev portal.

### Maintenance

These flakes attempt to avoid pinning any specific versions of the toolchains, the goal is to be up to date with latest stable every time I init a new flake.
