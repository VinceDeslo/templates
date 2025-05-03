# Templates

These templates are just a small repo I can use to quickly spin up some personal dev environments when playing around with tech.

The idea is to eventually build a personalized interactive CLI that acts as my local dev portal.
These flakes currently don't pin any specific versions of the toolchains, the goal is to be up to date with latest stable every time I init a new flake.

## Rust

```
nix flake init -t 'github:VinceDeslo/templates#rust-base'
cargo init .
```

## Go

```
nix flake init -t 'github:VinceDeslo/templates#go-base'
go mod init github.com/VinceDeslo/...
```

## Zig 

```
nix flake init -t 'github:VinceDeslo/templates#zig-base'
zig init .
```
