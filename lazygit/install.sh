#!/usr/bin/env bash
# Installs the PrismDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/prismday.yml" ] && cp "$dest/prismday.yml" "$dest/prismday.yml.bak"
cp "$dir/prismday.yml" "$dest/"
echo "Done. zsh/prismday.zsh points LG_CONFIG_FILE at config.yml plus prismday.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/prismday.yml\""
