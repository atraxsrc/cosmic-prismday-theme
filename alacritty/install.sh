#!/usr/bin/env bash
# Installs the PrismDay Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/prismday.toml" ] && cp "$dest/prismday.toml" "$dest/prismday.toml.bak"
cp "$dir/prismday.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/prismday.toml"]'
