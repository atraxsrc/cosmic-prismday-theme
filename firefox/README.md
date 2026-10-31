# Firefox - Prism Day

Firefox chrome matching the COSMIC Prism Day rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for frost and petal.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) `#DFEAEC` | Frame, page chrome, text on petal |
| ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) `#EEF8F9` | Panels, menus             |
| ![#DCDCDE](https://placehold.co/12x12/dcdcde/dcdcde.png) `#DCDCDE` | Menu hover row (petal tinted into the panel) |
| ![#D4CFD0](https://placehold.co/12x12/d4cfd0/d4cfd0.png) `#D4CFD0` | Menu pressed row          |
| ![#CBD6D8](https://placehold.co/12x12/cbd6d8/cbd6d8.png) `#CBD6D8` | Separators, menu border   |
| ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` | Accent, URL bar border, hover rail |
| ![#6D4143](https://placehold.co/12x12/6d4143/6d4143.png) `#6D4143` | Accent hover              |
| ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` | Menu text, new tab active |
| ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` | Links                     |
| ![#171E30](https://placehold.co/12x12/171e30/171e30.png) `#171E30` | Hover text                |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Prism Day)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from prismday-gem
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, petal menu hover
│   └── userContent.css   new tab page: petal accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** `theme/` colours the toolbar, tabs, URL bar, menus,
   sidebar and new tab page. This is the main look. Load it from the folder
   (below) or from addons.mozilla.org once it is listed there.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, petal menu
   hover, petal accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Light theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme: icons take the calm
colour (azure here, gold there), and everything "hot" (tab line, pressed
button, menu and sidebar selection, loading) takes the accent (petal here,
coral there). Prism Day's hot roles are coral and ruby; ruby is kept for errors and does
not appear in the chrome.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
petal so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) `#DFEAEC` | Frame, new tab, text on petal selections    |
| ![#EEF8F9](https://placehold.co/12x12/eef8f9/eef8f9.png) `#EEF8F9` | Toolbar, menus                              |
| ![#CBD6D8](https://placehold.co/12x12/cbd6d8/cbd6d8.png) `#CBD6D8` | URL bar field, button hover, sidebar border |
| ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` | Body text                                   |
| ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` | Menu border                                 |
| ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` | Icons, inactive tab text                    |
| ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` | Focused tab text, focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-prismday.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart. To
keep it, upload the zip to addons.mozilla.org (self-distribution is enough)
and install the signed `.xpi` it hands back.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files from the profile's `chrome/` folder and restart.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a petal-tinted ![#DCDCDE](https://placehold.co/12x12/dcdcde/dcdcde.png) `#DCDCDE`
  row with a 3px petal rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
