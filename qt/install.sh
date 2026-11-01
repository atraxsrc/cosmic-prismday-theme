#!/usr/bin/env bash
# Installs the PrismDay Qt colour scheme for qt5ct and qt6ct
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
for v in qt5ct qt6ct; do
    dest=~/.config/$v/colors
    mkdir -p "$dest"
    [ -f "$dest/PrismDay.conf" ] && cp "$dest/PrismDay.conf" "$dest/PrismDay.conf.bak"
    cp "$dir/PrismDay.conf" "$dest/"
    echo "  $v: colors/PrismDay.conf"
done
echo "Done. In qt5ct / qt6ct: Appearance -> Color scheme -> PrismDay, Palette: Custom -> Apply."
echo "Qt apps read it with QT_QPA_PLATFORMTHEME=qt6ct (or qt5ct) in the environment."
