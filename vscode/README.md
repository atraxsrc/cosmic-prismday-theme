# Cosmic Prism / Cosmic Prism Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Prism](https://github.com/atraxsrc/cosmic-prism-theme) rice and its light half
[Prism Day](https://github.com/atraxsrc/cosmic-prismday-theme): **Cosmic Prism** and **Cosmic Prism Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-prism-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Prism** or **Cosmic Prism Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Prism",
"workbench.preferredLightColorTheme": "Cosmic Prism Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Prism | Prism Day |
|------|---|---|
| Keywords, tags | ![#F7C3C6](https://placehold.co/12x12/f7c3c6/f7c3c6.png) `#F7C3C6` | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` |
| Functions, tag attributes | ![#D5EDEB](https://placehold.co/12x12/d5edeb/d5edeb.png) `#D5EDEB` | ![#526664](https://placehold.co/12x12/526664/526664.png) `#526664` |
| Strings | ![#6488EA](https://placehold.co/12x12/6488ea/6488ea.png) `#6488EA` | ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` |
| Numbers, constants | ![#FFA69E](https://placehold.co/12x12/ffa69e/ffa69e.png) `#FFA69E` | ![#963E36](https://placehold.co/12x12/963e36/963e36.png) `#963E36` |
| Types, classes, modules | ![#85CEC4](https://placehold.co/12x12/85cec4/85cec4.png) `#85CEC4` | ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#E5C697](https://placehold.co/12x12/e5c697/e5c697.png) `#E5C697` | ![#755C33](https://placehold.co/12x12/755c33/755c33.png) `#755C33` |
| Parameters (italic) | ![#A6AFC9](https://placehold.co/12x12/a6afc9/a6afc9.png) `#A6AFC9` | ![#4D5670](https://placehold.co/12x12/4d5670/4d5670.png) `#4D5670` |
| Operators, punctuation | ![#8893B3](https://placehold.co/12x12/8893b3/8893b3.png) `#8893B3` | ![#515B7C](https://placehold.co/12x12/515b7c/515b7c.png) `#515B7C` |
| Comments (italic) | ![#5A6B8C](https://placehold.co/12x12/5a6b8c/5a6b8c.png) `#5A6B8C` | ![#7B8CAD](https://placehold.co/12x12/7b8cad/7b8cad.png) `#7B8CAD` |
| Accent | ![#F7C3C6](https://placehold.co/12x12/f7c3c6/f7c3c6.png) `#F7C3C6` | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` |
| Errors, deleted, conflicts | ![#E95C4B](https://placehold.co/12x12/e95c4b/e95c4b.png) `#E95C4B` | ![#B52817](https://placehold.co/12x12/b52817/b52817.png) `#B52817` |

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
comments and line numbers at least 3:1, in both halves.

- **Prism**: Petal ![#F7C3C6](https://placehold.co/12x12/f7c3c6/f7c3c6.png)
  `#F7C3C6` is 12.5:1 on the window background and 11.7:1 on the container
  colour ![#0E1628](https://placehold.co/12x12/0e1628/0e1628.png) `#0E1628`, so
  it stays the same colour everywhere, the match highlight in the suggest and
  hover widgets included. Keywords on the highlighted current line are 10.6:1;
  comments dip under 3:1 there.
- **Prism Day**: Petal
  ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` is 5.6:1 on
  the window background and 6.3:1 on the container colour
  ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) `#EEF8F9`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 5.1:1; comments
  dip under 3:1 there.
