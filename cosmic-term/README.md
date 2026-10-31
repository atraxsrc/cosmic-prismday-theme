# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Prism Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Prism Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays petal ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F`.

The ANSI slots follow the rice: `red` is ruby ![#B52817](https://placehold.co/12x12/b52817/b52817.png) `#B52817`, the one colour
kept for what is wrong; `green` is azure ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9`; `yellow` is ice
![#526664](https://placehold.co/12x12/526664/526664.png) `#526664`; `blue` is the petal accent ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the azure
`No Change:`; `magenta` is coral ![#963E36](https://placehold.co/12x12/963e36/963e36.png) `#963E36`, the warm colour numbers and
warnings take; `cyan` is haze ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65`; `white` is
![#48505C](https://placehold.co/12x12/48505c/48505c.png) `#48505C`. Directories are not affected: `LS_COLORS` in `zsh/prismday.zsh` colours
them in truecolor.

## Which one

Navy ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` is the default. The others move through Prism Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Prism Day Haze | ![#515B7C](https://placehold.co/12x12/515b7c/515b7c.png) `#515B7C` | 5.5:1 | muted text, the dim text colour |
| Prism Day Teal | ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65` | 5.0:1 | directories (`LS_COLORS`), types |
| Prism Day Azure | ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9` | 6.7:1 | strings, success, the `green` slot |
| Prism Day Petal | ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F` | 5.6:1 | the accent, the cursor and the `blue` slot |
| Prism Day Marine | ![#3E4146](https://placehold.co/12x12/3e4146/3e4146.png) `#3E4146` | 8.4:1 | a neutral a step from plain text |
| **Prism Day** (default) | ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D` | 11.5:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Prism Day Teal, for example, look like plain text.
Ruby errors and coral numbers stand out more against the dimmer
schemes than against navy.

**Bold:** `bright_foreground` (![#171E30](https://placehold.co/12x12/171e30/171e30.png) `#171E30`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#DFEAEC](https://placehold.co/12x12/dfeaec/dfeaec.png) `#DFEAEC`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Prism Day** · `PrismDay-term.ron` · navy ![#242B3D](https://placehold.co/12x12/242b3d/242b3d.png) `#242B3D`, 11.5:1. The default.

![Prism Day](../assets/cosmic-term/PrismDay-term.png)

**Prism Day Haze** · `PrismDay-term-haze.ron` · ![#515B7C](https://placehold.co/12x12/515b7c/515b7c.png) `#515B7C`, 5.5:1. Muted text, the dim text colour.

![Prism Day Haze](../assets/cosmic-term/PrismDay-term-haze.png)

**Prism Day Teal** · `PrismDay-term-teal.ron` · ![#306B65](https://placehold.co/12x12/306b65/306b65.png) `#306B65`, 5.0:1. Directories (`LS_COLORS`), types.

![Prism Day Teal](../assets/cosmic-term/PrismDay-term-teal.png)

**Prism Day Azure** · `PrismDay-term-azure.ron` · ![#2347A9](https://placehold.co/12x12/2347a9/2347a9.png) `#2347A9`, 6.7:1. Strings, success, the `green` slot.

![Prism Day Azure](../assets/cosmic-term/PrismDay-term-azure.png)

**Prism Day Petal** · `PrismDay-term-petal.ron` · ![#804C4F](https://placehold.co/12x12/804c4f/804c4f.png) `#804C4F`, 5.6:1. The accent, the cursor and the `blue` slot.

![Prism Day Petal](../assets/cosmic-term/PrismDay-term-petal.png)

**Prism Day Marine** · `PrismDay-term-marine.ron` · ![#3E4146](https://placehold.co/12x12/3e4146/3e4146.png) `#3E4146`, 8.4:1. A neutral a step from plain text.

![Prism Day Marine](../assets/cosmic-term/PrismDay-term-marine.png)

Contrast is plain text on the theme background, WCAG 2.
