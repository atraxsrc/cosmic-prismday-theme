#!/usr/bin/env bash
# Installs the PrismDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/prismday.gitconfig" ] && cp "$dest/prismday.gitconfig" "$dest/prismday.gitconfig.bak"
cp "$dir/prismday.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/prismday.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/prismday.gitconfig"
fi
echo "Needs the bat PrismDay theme for the code colours: ./bat/install.sh"
