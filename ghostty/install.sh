#!/usr/bin/env bash
# Installs the PrismDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/PrismDay" ] && cp "$dest/PrismDay" "$dest/PrismDay.bak"
cp "$dir/PrismDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = PrismDay"
echo "(or  theme = dark:Prism,light:PrismDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
