#!/usr/bin/env bash
# Installs the PrismDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/PrismDay.conf" ] && cp "$dest/PrismDay.conf" "$dest/PrismDay.conf.bak"
cp "$dir/PrismDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/PrismDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
