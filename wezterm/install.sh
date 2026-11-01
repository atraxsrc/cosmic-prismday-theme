#!/usr/bin/env bash
# Installs the PrismDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/prismday.lua" ] && cp "$dest/prismday.lua" "$dest/prismday.lua.bak"
cp "$dir/prismday.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("prismday")'
