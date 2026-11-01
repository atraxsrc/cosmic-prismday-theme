<div align="center">

# COSMIC · Prism Day

![Prism Day palette](assets/palette.png)

Pop!_OS 24.04 on COSMIC in frost, navy and petal pink: desktop, terminal,
shell, Firefox, Brave, cursor, wallpapers. A light rice in jewel tones;
ruby is kept for what is wrong. The light half of a pair;
the dark half is [cosmic-prism-theme](https://github.com/atraxsrc/cosmic-prism-theme).

![Pop!_OS](https://img.shields.io/badge/Pop!_OS-24.04_LTS-804c4f?style=for-the-badge&logo=popos&logoColor=white)
![COSMIC](https://img.shields.io/badge/COSMIC-1.0.0-2347a9?style=for-the-badge)
![Prism Day](https://img.shields.io/badge/Theme-PrismDay-dfeaec?style=for-the-badge&labelColor=804c4f)
![Firefox](https://img.shields.io/badge/Firefox-PrismDay-804c4f?style=for-the-badge&logo=firefox-browser&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-515b7c?style=for-the-badge)

</div>

---
![Pop!_OS COSMIC desktop with the Prism Day theme](assets/screenshot.png)

## Palette

Frost, a cool off-white, with navy text and jewel tones between them:
teal, azure, ice and coral. Petal pink is the accent, coral takes numbers
and warnings, and ruby is kept for errors and nothing else. Every text
colour is at least 4.5:1 on the window background.

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) Frost | ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) `#DFEAEC` |
| Containers | ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) Snow / Glaze | ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) `#EEF8F9` / ![#D5E0E2](https://placehold.co/12x12/d5e0e2/d5e0e2.png) `#D5E0E2` |
| Text | ![#242b3d](https://placehold.co/12x12/242b3d/242b3d.png) Navy | ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` |
| Accent | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) Petal | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` |
| Warning | ![#963e36](https://placehold.co/12x12/963e36/963e36.png) Coral | ![#963E36](https://placehold.co/12x12/963e36/963e36.png) `#963E36` |
| Error | ![#b52817](https://placehold.co/12x12/b52817/b52817.png) Ruby | ![#B52817](https://placehold.co/12x12/b52817/b52817.png) `#B52817` |
| Success | ![#2347a9](https://placehold.co/12x12/2347a9/2347a9.png) Azure | ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` |
| Ice | ![#526664](https://placehold.co/12x12/526664/526664.png) Symlinks, yellow slot | ![#526664](https://placehold.co/12x12/526664/526664.png) `#526664` |
| Teal | ![#306B65](https://placehold.co/12x12/306b65/306b65.png) Directories, types | ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` |
| Muted | ![#515b7c](https://placehold.co/12x12/515b7c/515b7c.png) Secondary text | ![#515B7C](https://placehold.co/12x12/515b7c/515b7c.png) `#515B7C` |
| Dim | ![#7b8cad](https://placehold.co/12x12/7b8cad/7b8cad.png) Comments | ![#7B8CAD](https://placehold.co/12x12/7b8cad/7b8cad.png) `#7B8CAD` |
| Lines | ![#a3acae](https://placehold.co/12x12/a3acae/a3acae.png) Box lines, inactive | ![#A3ACAE](https://placehold.co/12x12/a3acae/a3acae.png) `#A3ACAE` |

| Role | Prism Day | Prism |
|------|---|---|
| Background | ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) `#DFEAEC` | ![#060D1F](https://placehold.co/12x12/060d1f/060d1f.png) `#060D1F` |
| Text | ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` | ![#E0F7FA](https://placehold.co/12x12/e0f7fa/e0f7fa.png) `#E0F7FA` |
| Accent | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` | ![#F7C3C6](https://placehold.co/12x12/f7c3c6/f7c3c6.png) `#F7C3C6` |
| Success | ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` | ![#6488EA](https://placehold.co/12x12/6488ea/6488ea.png) `#6488EA` |
| Error | ![#B52817](https://placehold.co/12x12/b52817/b52817.png) `#B52817` | ![#E95C4B](https://placehold.co/12x12/e95c4b/e95c4b.png) `#E95C4B` |

The accent is petal pink, 5.6:1 on the background and 6.3:1 on a
container, so it stays the same colour wherever it is text; buttons and
selections carry it with snow-white text on top.

---

## Repo Structure

```
.
├── brave
│   ├── theme                    # Chromium theme (manifest + icons), Load unpacked
│   └── README.md
├── btop
│   └── PrismDay.theme                 # btop colour theme
├── claude-desktop
│   ├── cosmic-prism.jsonc          # Claude Desktop theme (claude-desktop-extra)
│   └── install.sh
├── cosmic
│   ├── PrismDay.ron                   # COSMIC Appearance import (Light)
│   ├── config/                  # baseline settings: fonts, icons, terminal look
│   └── install.sh
├── cosmic-term
│   ├── PrismDay-term.ron              # COSMIC Terminal colour scheme
│   ├── PrismDay-term-*.ron            # dimmer plain-text variants, same ANSI colours
│   └── README.md                # previews and which one to pick
├── cursors
│   ├── Oxygen-PrismDay-*/             # cursor themes, one per icon colour, patched for COSMIC apps
│   ├── recolour.py              # makes a variant from any other, see cursors/README.md
│   ├── install.sh
│   ├── uninstall.sh
│   └── README.md
├── icons
│   └── install.sh               # Cosmic-PrismDay icon pack from cosmic-icon-themes
├── fastfetch
│   ├── config.jsonc             # petal / teal fastfetch config
│   ├── cosmic.txt               # COSMIC logo
│   └── install.sh
├── firefox
│   ├── theme                    # Cosmic Prism Day theme add-on (manifest + icons)
│   ├── chrome
│   │   ├── userChrome.css       # rounded chrome, snow menus
│   │   └── userContent.css      # new tab accent
│   ├── install.sh
│   └── README.md
├── lsd
│   ├── config.yaml              # theme: custom
│   ├── colors.yaml              # permission / size / date / git columns
│   └── install.sh
├── nvim                         # Neovim colorscheme, LazyVim spec, RON syntax, install.sh
├── telegram
│   ├── colors.tdesktop-theme    # Telegram Desktop colour scheme (source)
│   ├── cosmic-prismday.tdesktop-theme # built theme, open this in Telegram
│   └── build.sh                 # rebuilds it, optionally with a wallpaper
├── vscode
│   ├── themes/                  # Cursor / VS Code colour themes, Prism (dark) + Prism Day (light)
│   ├── package.json             # extension manifest
│   ├── install.sh               # packs a .vsix, installs it with cursor --install-extension
│   └── README.md
├── scripts
│   ├── update_system.sh         # nala + flatpak, petal / azure ANSI
│   └── switch.sh                # make this the active rice (see Switching rice)
├── zsh
│   ├── prismday.zsh                   # LS_COLORS, highlighting colours, aliases, starship
│   └── install.sh
├── assets
│   ├── cursors/                 # cursor preview
│   ├── cosmic-term/             # scheme previews for cosmic-term/README.md
│   ├── palette.png              # the 16 terminal colours, under the title
│   ├── screenshot.png           # README screenshot
│   └── wallpaper.png            # the gem wallpaper at 2560x1440
├── backgrounds/                 # wallpapers, prismday-<subject>.png (see Icons and wallpaper)
├── docs
│   └── showcase.md              # the rice describing itself, for the Postilla pane of a screenshot
├── LICENSE
└── README.md
```

---

## COSMIC Desktop

This is a **Light** theme, so it goes in COSMIC's Light slot:

Settings → Desktop → Appearance → **Light** → **Import** → `cosmic/PrismDay.ron`

Accent is petal ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F`. Use the `+` control if you want a custom swatch.

Frosted glass is on in the `.ron` at `frosted: Low` with an opacity table of
0.66 to 0.96, tinted with the palette's dim grey, for windows, panel,
applets and system UI (maximized apps stay solid), and corners are squared
(`radius_*: 2.0`), the same as the DarkGold baseline. Adjust frosted glass on
Appearance → Style → Frosted glass after import; those sliders survive a theme switch.

Export from Appearance if you tweak backgrounds / tints so you do not lose them.

Pairing tip: import `Prism.ron` from
[cosmic-prism-theme](https://github.com/atraxsrc/cosmic-prism-theme) into the
Dark slot and COSMIC's Dark / Light toggle flips between the two. Wallpaper,
Firefox and the shell layer do not follow the toggle; those are per-rice files.

### Baseline settings

`cosmic/config/` holds the settings that make up the look and rarely change
(panel, dock, applets and shortcuts are left out on purpose):

| Where | Setting |
|-------|---------|
| Fonts | Interface `Maple Mono Normal` Light, monospace `Maple Mono Normal NFM` |
| Icons | Cosmic-PrismDay-Petal |
| Windows | Minimize / maximize buttons hidden, theme applied to GNOME apps |
| Terminal | Maple Mono 15 (weights 500 / bold 800 / dim 300), 77% opacity, no header bar, Prism Day |

Install the [Maple fonts](https://github.com/subframe7536/maple-font/releases)
(Maple Mono Normal and Maple Mono Normal NFM) and the Cosmic-PrismDay icons (see
Icons below) and import the terminal scheme first, then:

```bash
./cosmic/install.sh
```

It backs up each file it replaces to `*.bak` and COSMIC applies it live.

The interface font is the Light weight on purpose. COSMIC sets interface text
brightness itself (the text tint only picks the hue), so on these light panels
labels land near ![#3C4C4A](https://placehold.co/12x12/3c4c4a/3c4c4a.png) `#3C4C4A` whatever tint you choose; the thinner strokes are
what calms them at night. Settings → Fonts lists only families, so the weight
lives in `cosmic/config/com.system76.CosmicTk/v1/interface_font`.

---

## COSMIC Terminal

The desktop `.ron` does not colour ANSI text.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. Light tab → **Import** → `cosmic-term/PrismDay-term.ron`
3. View → Settings → Appearance → Color scheme (light) → **Prism Day**

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing.

Navy text on frost; ruby for errors, petal for the cursor and the
`blue` slot, azure for strings and success, ice in the yellow slot, coral
in the magenta slot for numbers, teal for directories.

If navy is not the plain text you want, there are five other variants
with the same ANSI colours, from Haze ![#515B7C](https://placehold.co/12x12/515b7c/515b7c.png) `#515B7C` up to
Marine ![#3E4146](https://placehold.co/12x12/3e4146/3e4146.png) `#3E4146`. Previews and which to
pick: [`cosmic-term/README.md`](cosmic-term/README.md).

---

## Firefox

Two layers:

1. **Theme (colours):** `firefox/theme` is a WebExtension theme, **Cosmic Prism Day**.
   Until it is listed on addons.mozilla.org, load it from the folder:
   `about:debugging#/runtime/this-firefox` → **Load Temporary Add-on** →
   `firefox/theme/manifest.json` (gone on restart), or zip it and have AMO
   sign it for you; see [`firefox/README.md`](firefox/README.md).
   This is the main look.
2. **Stylesheets (optional):** `firefox/chrome/` adds rounded corners, petal
   menu hover, petal accents and blank new-tab tiles on top of the theme
   (they also work with Firefox's built-in Light theme):

```bash
./firefox/install.sh
```

Fully quit Firefox afterward. Details and CSS rules: [`firefox/README.md`](firefox/README.md).

---

## Brave

`brave/theme` is a Chromium theme with the Firefox theme's colours: frost
frame, snow toolbar, azure icons and inactive tabs, petal on the
active tab. Brave, Chrome, Chromium and Edge take it, and it loads straight
from the clone, so no Chrome Web Store or Google account is needed:

`brave://extensions` → **Developer mode** → **Load unpacked** → `brave/theme`

Leave the clone in place, Brave keeps reading the folder. Colours, limits and
packing a `.crx`: [`brave/README.md`](brave/README.md).

---

## Claude Desktop

For the unofficial [claude-desktop-extra](https://github.com/patrickjaja/claude-desktop-extra)
Linux build. `claude-desktop/cosmic-prism.jsonc` is one theme with both halves:
Prism in dark mode and Prism Day in light mode, so Claude's own
Settings → Appearance toggle switches between the two rices.
Colours come from `cosmic/*.ron`, contrast-checked (text and
button text 4.5:1, accents 3:1).

```bash
./claude-desktop/install.sh
```

It copies the file into `~/.config/Claude/themes.d/`. Then press
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd> in Claude Desktop and pick **cosmic-prism**.

The same file ships in [`cosmic-prism-theme`](https://github.com/atraxsrc/cosmic-prism-theme),
so installing from either repo gives the same theme.

---

## Cursor editor

`vscode/` is a colour theme extension for [Cursor](https://cursor.com) with
both halves of the pair: **Cosmic Prism** and **Cosmic Prism Day**. It is a
plain VS Code theme extension, so VS Code and VSCodium take it too, and the
same extension ships in cosmic-prism-theme. Code is coloured the way Neovim is
in the rice; the workbench is frost with snow menus, hovers and inputs, petal
on the active tab, buttons and menu highlight, and the integrated terminal
uses the COSMIC Terminal scheme. Cursor builds its Agent and chat panels from
the same theme colours, so they follow along.

```bash
./vscode/install.sh
```

It packs `vscode/` into a `.vsix` and installs it with
`cursor --install-extension`; run it again after editing the theme. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> in Cursor and pick
**Cosmic Prism Day**. Three lines in Cursor's `settings.json` make it follow
COSMIC's Dark / Light toggle between Prism and Prism Day; they, the colours and
the contrast notes are in [`vscode/README.md`](vscode/README.md).

---

## Telegram

`telegram/cosmic-prismday.tdesktop-theme` is a Telegram Desktop theme: frost chat
list and background, snow incoming and dark-azure outgoing bubbles, petal
for the accent, links, unread badges and buttons (with frost text on them),
azure for online status and read ticks, ruby only where Telegram marks
something wrong. Group member names cycle through eight of the rice's
colours. Text and badge colours are contrast-checked at 4.5:1 or better,
except disabled menu items.

Settings → Chat Settings → Chat wallpaper → **Choose from file** →
`telegram/cosmic-prismday.tdesktop-theme` → **Apply this theme**.

The colours live in `telegram/colors.tdesktop-theme`, which is plain text;
`build.sh` zips it with the chat background into the `.tdesktop-theme`. The
background is plain frost; to put a wallpaper behind the chat instead
(ImageMagick re-encodes it to a 2560px JPEG, Telegram caps theme files at 5 MB):

```bash
./telegram/build.sh --wallpaper backgrounds/prismday-gem.jpg
```

Built against Telegram Desktop 7.3.1. Calls, group calls, statistics charts and
premium badges keep Telegram's own colours.

Telegram has no dark / light pairing, so Prism, the dark half, ships its
own theme.

---

## Cursor

**Oxygen** cursors recoloured to the icon colours, one per folder colour of the
Cosmic-PrismDay icon pack: **Petal** (default), **Ruby**, **Dark**. Patched with the cursor
names COSMIC apps ask for. COSMIC has no cursor picker yet, so the script sets it:

```bash
./cursors/install.sh                      # Petal
./cursors/install.sh --variant Dark      # or another, see --list
reboot
```

Previews, what the script touches, how to undo it and how the colours are made:
[`cursors/README.md`](cursors/README.md).

---

## Scripts

### `update_system.sh`

nala + flatpak updater. Headers in petal, info in teal, success in azure,
warnings in coral, errors in ruby; the banner ramps from azure to
ice, the rule below it from petal into azure.

```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
```

### `switch.sh`

Makes this the active rice, coming from any other `cosmic-*-theme` rice. See
[Switching rice](#switching-rice).

```bash
./scripts/switch.sh
```

---

## Terminal extras

Need a [Nerd Font](https://www.nerdfonts.com/) in the terminal for the icons
(Maple Mono NFM in the baseline above).

### zsh

`zsh/prismday.zsh` is the rice part of the shell only: `LS_COLORS` (also used by
lsd for file names and by the completion menu), petal / azure / ice colours
for zsh-autosuggestions and zsh-syntax-highlighting, lsd / bat / nvim aliases
and the starship prompt. Your own `~/.zshrc` stays private and sources it.

Needs zsh + [oh-my-zsh](https://ohmyz.sh/). `install.sh` clones the two
plugins if missing and appends one `source` line to `~/.zshrc` (backup in
`~/.zshrc.bak`):

```bash
./zsh/install.sh
exec zsh
```

In `~/.zshrc` keep `ZSH_THEME=""` and
`plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)`.

### lsd

File names are coloured by `LS_COLORS` from `zsh/prismday.zsh`;
`lsd/colors.yaml` colours the other columns with the 256-colour codes nearest
the palette (95 petal, 124 ruby, 95 coral, 25 azure, 59 ice,
240 teal, 60 haze, 103 dusk.). lsd 1.0.0 does not accept `#hex` there.

```bash
./lsd/install.sh
lsd -l
```

### fastfetch

COSMIC logo in petal, Hardware / Software / Age boxes in dim grey with
teal keys. `install.sh` backs up any existing
`~/.config/fastfetch/config.jsonc` to `config.jsonc.bak`.

```bash
./fastfetch/install.sh
fastfetch
```

### Neovim

`nvim/` carries the rice into Neovim: a dependency-free colorscheme built from
the palette (`nvim/colors/prismday.lua`), a LazyVim spec that selects it and makes
sure the treesitter parsers for the files in this repo are installed
(`nvim/lua/plugins/prismday.lua`), and a small RON syntax file so `cosmic/*.ron`
is coloured even before the parser exists. `:terminal` inside Neovim uses the
Prism Day scheme.

```bash
./nvim/install.sh
# restart nvim; LazyVim switches to the prismday colorscheme
```

Without LazyVim, copy `nvim/colors/prismday.lua` to `~/.config/nvim/colors/` and
run `:colorscheme prismday`.

### btop

`btop/PrismDay.theme`: frost background, dim grey boxes, petal titles, meters
ramp from azure through ice to ruby.

```bash
mkdir -p ~/.config/btop/themes
cp btop/PrismDay.theme ~/.config/btop/themes/
# btop → Esc → Options → Color theme → Prism Day
```

---

## Icons and wallpaper

Icons: **Cosmic-PrismDay**, the [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa)
by Fausto Korpsvart recolored to this palette in
[cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes). Folders come in
three colors: **Petal** ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` (default), **Ruby** ![#B52817](https://placehold.co/12x12/b52817/b52817.png) `#B52817` and **Dark** ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` with petal symbols.

![Cosmic-PrismDay folder colors](https://raw.githubusercontent.com/atraxsrc/cosmic-icon-themes/main/previews/Cosmic-PrismDay.png)

```bash
./icons/install.sh                       # Petal folders
./icons/install.sh --variant Ruby  # or Dark
```

It downloads the pack from the latest cosmic-icon-themes release, checks its SHA256,
installs it to `~/.local/share/icons/` and sets it as the COSMIC icon theme.
Restart open apps afterwards (Files caches icons per window).
Add `--system` to install to `/usr/share/icons` instead, for every user and the
login screen (asks for sudo); `--user` is the default.

Wallpapers ship in [`backgrounds/`](backgrounds/), named `prismday-<subject>`:
the same five night scenes as Prism, flipped onto Prism Day's frost: an aurora over a lake, a purple
nebula, a cut gem lit from inside, a blue gem in a lattice of light and a
moon behind blossom, plus the anime portrait from the screenshot
(`prismday-anime.png`) in the palette's own tones. The lit gem
(`prismday-gem.jpg`) is the one in `assets/wallpaper.png` at 2560x1440.

Settings → Wallpaper → Add image → a file from `backgrounds/`, or one you downloaded.

---

## Setup

```bash
git clone https://github.com/atraxsrc/cosmic-prismday-theme.git
cd cosmic-prismday-theme

# desktop
# Settings → Appearance → Light → Import cosmic/PrismDay.ron

# terminal
# View → Color schemes → Light tab → Import cosmic-term/PrismDay-term.ron

# firefox theme: about:debugging → Load Temporary Add-on → firefox/theme/manifest.json
# (or zip and sign it, see firefox/README.md)

# optional extra chrome
./firefox/install.sh

# brave: brave://extensions → Developer mode → Load unpacked → brave/theme

# claude desktop (claude-desktop-extra), then Ctrl+Shift+T
./claude-desktop/install.sh

# cursor editor, then Ctrl+K Ctrl+T → Cosmic Prism Day
./vscode/install.sh

# telegram desktop
# Settings → Chat Settings → Chat wallpaper → Choose from file → telegram/cosmic-prismday.tdesktop-theme

# cursor (then reboot), see cursors/README.md
./cursors/install.sh                      # Petal
./cursors/install.sh --variant Dark      # or another, see --list
reboot

# shell + terminal tools (see Terminal extras above)
./zsh/install.sh
./lsd/install.sh
./fastfetch/install.sh
./nvim/install.sh
mkdir -p ~/.config/btop/themes && cp btop/PrismDay.theme ~/.config/btop/themes/

# wallpaper
# Settings → Wallpaper → Add image → a file from backgrounds/ (see Icons and wallpaper above)

./icons/install.sh                  # icons (see Icons above)
# Maple fonts (https://github.com/subframe7536/maple-font), then
# fonts, icons, terminal look from cosmic/config/
./cosmic/install.sh
```

---

## Switching rice

The installers replace what they own (with a `*.bak` copy), but some things
pile up instead: shell layers in `~/.zshrc`, LazyVim specs, the updater link and
btop's theme setting. `scripts/switch.sh` makes Prism Day the active rice, coming
from any other `cosmic-*-theme` rice, and tidies those up. Every rice repo ships
the same script.

```bash
./scripts/switch.sh               # switch, icons included
./scripts/switch.sh --keep-icons  # leave the current icon theme alone
```

It backs up every file it replaces, then:

- copies `cosmic/config/` (fonts, terminal look, icons) and turns light mode on.
  The terminal scheme and icon theme are only replaced when the current one is
  not already a Prism Day variant, so a dimmer text variant or another icon colour
  survives. Icons stay as they are until `./icons/install.sh` has run.
- runs the fastfetch, lsd, Neovim and Claude Desktop installers and sets
  btop's `color_theme`
- moves every other rice's LazyVim spec from `~/.config/nvim/lua/plugins/` to
  `~/.config/nvim/rice-off/` (LazyVim loads every spec there and the last
  colorscheme wins); your own specs stay
- comments out every other rice's `source` line in `~/.zshrc`, and
  cosmic-ricing's `ricing/zsh/colors.zsh`, then uncomments Prism Day's or adds it
- points `~/update_system.sh` at this repo's updater
- installs the Firefox userChrome / userContent

The GUI steps it cannot do are printed at the end:

1. Settings → Desktop → Appearance → Light → Import `cosmic/PrismDay.ron`
2. COSMIC Terminal → View → Color schemes → Light tab → Import `cosmic-term/PrismDay-term.ron`
3. Firefox: disable the old rice's add-on, enable this one, restart Firefox
4. Settings → Wallpaper → a file from `backgrounds/`
5. Claude Desktop: Ctrl+Shift+T → `cosmic-prism`, Appearance → Light
6. `exec zsh`, restart Neovim (`:Lazy clean` drops plugins only the old specs used)

Skip 1 and 2 when that slot already holds Prism Day. The first time on this rice,
run [Setup](#setup) once for the fonts, icons and cursor.

**Within the pair** (Prism Day ↔ [Prism](https://github.com/atraxsrc/cosmic-prism-theme)): the two halves
sit side by side in COSMIC's Dark and Light slots and share one Claude Desktop
theme, so after the first time only the Firefox add-on and the wallpaper are
left by hand. Add `--keep-icons` to keep one icon colour across the pair.

Leaving Prism Day is the next rice's `./scripts/switch.sh`. `./cursors/uninstall.sh`
puts the Pop cursor back.

---

## Stack

| Tool | What it does |
|------|-------------|
| [Pop!_OS 24.04](https://pop.system76.com/) | Base OS by System76 |
| [COSMIC DE](https://system76.com/cosmic) | Desktop environment |
| [oh-my-zsh](https://ohmyz.sh/) | zsh framework + plugins |
| [lsd](https://github.com/lsd-rs/lsd) | `ls` with icons and colours |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [btop](https://github.com/aristocratos/btop) | Resource monitor |
| [cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes) | Icon pack (Cosmic-PrismDay), recolored from [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa) |
| [Oxygen-Cursors](https://github.com/wo2ni/Oxygen-Cursors) | Cursor, recoloured to the icon colours |

## Credits

- Shared baseline (frosted glass, squared corners, fonts, the Firefox and
  Chromium theme recipes, the scripts) from
  [cosmic-darkgold-theme](https://github.com/atraxsrc/cosmic-darkgold-theme) and
  [cosmic-noir-theme](https://github.com/atraxsrc/cosmic-noir-theme).

## License

MIT. The cursor artwork keeps the terms of KDE's Oxygen project, see
[`cursors/README.md`](cursors/README.md).
