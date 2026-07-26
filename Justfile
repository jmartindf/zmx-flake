# zmx-flake task runner

# Default recipe
default:
    @just --list

# Format Nix files
fmt:
    nix fmt .

# Lint Nix files
lint:
    statix check .

# Regenerate the zig2nix dependency locks for the pinned zmx sources
update-zig-locks:
    scripts/update-zig-locks

# Format and lint
check: fmt lint
