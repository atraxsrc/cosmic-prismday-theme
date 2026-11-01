#!/usr/bin/env bash
# Installs the PrismDay Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/prismday.toml" ] && cp "$dest/prismday.toml" "$dest/prismday.toml.bak"
cp "$dir/prismday.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "prismday"'
