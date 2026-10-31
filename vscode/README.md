# Cosmic Prism Day for Cursor

Colour theme for [Cursor](https://cursor.com) from the COSMIC
[Prism Day](https://github.com/atraxsrc/cosmic-prismday-theme) rice: **Cosmic Prism Day**, dark
only. It is a plain VS Code theme extension, so VS Code and VSCodium take it
too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-prismday-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Prism Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

Prism Day has no light half, so there is nothing for COSMIC's Dark / Light toggle to
switch to; leave `window.autoDetectColorScheme` off, or pair it with another
rice's light theme in `workbench.preferredLightColorTheme`.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/prismday.lua`):

| Role | Prism Day |
|------|----|
| Keywords, tags | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` |
| Functions, tag attributes | ![#526664](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#526664` |
| Strings | ![#2347A9](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#2347A9` |
| Numbers, constants | ![#963E36](https://placehold.co/12x12/D87C4A/D87C4A.png) `#963E36` |
| Types, classes, modules | ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#755C33](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#755C33` |
| Parameters (italic) | ![#4D5670](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#4D5670` |
| Operators, punctuation | ![#515B7C](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#515B7C` |
| Comments (italic) | ![#7B8CAD](https://placehold.co/12x12/565D60/565D60.png) `#7B8CAD` |
| Accent | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` |
| Errors, deleted, conflicts | ![#B52817](https://placehold.co/12x12/DE6145/DE6145.png) `#B52817` |

The workbench takes the window colour of the rice's `cosmic/PrismDay.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the petal accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter petal ![#6D4143](https://placehold.co/12x12/6d4143/6d4143.png) `#6D4143`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1. Petal ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` is 5.6:1 on the window background and 6.3:1 on the
container colour ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) `#EEF8F9`, so it stays the same colour everywhere, the
match highlight in the suggest and hover widgets included. Keywords on the
highlighted current line are 5.1:1; comments dip under 3:1 there.
