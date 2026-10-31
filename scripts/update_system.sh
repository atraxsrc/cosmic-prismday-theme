#!/bin/bash
set -eo pipefail

# ─────────────────────────────────────────────
#  Prism Day palette (light terminal)
#  bg:      #DFEAEC   fg:      #242B3D
#  petal:   #804C4F   coral:   #963E36
#  ruby:    #B52817   azure:   #2347A9
#  ice:     #526664   teal:    #306B65
#  muted:   #515B7C   dim:     #7B8CAD
# ─────────────────────────────────────────────

# Prism Day - using $'...' so escape bytes are stored at assignment time
# and work correctly with both echo -e and printf "%s"
EDGE=$'\033[38;2;128;76;79m'      # #804C4F  - section headers, logo rule (petal)
CONTROL=$'\033[38;2;48;107;101m'    # #306B65  - info / commands (teal)
HIGH=$'\033[38;2;35;71;169m'      # #2347A9  - success, logo rule (azure)
ACCENT=$'\033[38;2;150;62;54m'    # #963E36  - warnings (coral)
MUTE=$'\033[38;2;81;91;124m'      # #515B7C  - skipped (muted)
HIGHER=$'\033[38;2;181;40;23m'    # #B52817  - errors (ruby)
DIM=$'\033[38;2;123;140;173m'      # #7B8CAD  - comments / dim text
BOLD=$'\033[1m'
RESET=$'\033[0m'

# ── Helpers ────────────────────────────────────────────────────────────────────

print_header() {
    echo
    echo -e "${EDGE}${BOLD}┌─ $1 ${DIM}──────────────────────────────────────${RESET}"
}

print_success() { echo -e "  ${HIGH}✓ $1${RESET}"; }
print_info()    { echo -e "  ${CONTROL}→ $1${RESET}"; }
print_warn()    { echo -e "  ${ACCENT}⚠ $1${RESET}"; }
print_skip()    { echo -e "  ${MUTE}⊘ $1${RESET}"; }
print_error()   { echo -e "  ${HIGHER}✗ $1${RESET}"; }
print_dim()     { echo -e "  ${DIM}$1${RESET}"; }

command_exists() { command -v "$1" >/dev/null 2>&1; }

# ── Config ─────────────────────────────────────────────────────────────────────

# Phased updates: Ubuntu staggers non-security updates so a bad one only hits a
# fraction of machines first. Setting this to "true" opts out of that - you pull
# every update immediately and become an early tester. Security updates are never
# phased, so they always install regardless of this setting.
#   true  = always pull phased updates now (early-adopter)
#   false = honor the rollout, install when it reaches you (safer default)
INCLUDE_PHASED=true

# Built once and passed to apt/nala. Empty when INCLUDE_PHASED=false.
PHASED_OPT=()
if [ "$INCLUDE_PHASED" = true ]; then
    PHASED_OPT=(-o APT::Get::Always-Include-Phased-Updates=true)
fi

# ── Update functions ───────────────────────────────────────────────────────────

update_system() {
    print_header "System Packages"

    if [ "$INCLUDE_PHASED" = true ]; then
        print_dim "Including phased updates (early-adopter mode)"
    fi

    if command_exists nala; then
        print_info "Package manager: nala"
        sudo nala update
        sudo nala upgrade --full -y "${PHASED_OPT[@]}"
#        sudo nala autoremove -y
        sudo nala clean
        print_success "Nala system update complete"

    elif command_exists apt; then
        print_info "Package manager: apt (nala not found)"
        sudo apt update
        sudo apt full-upgrade -y "${PHASED_OPT[@]}"
#        sudo apt autoremove -y
        sudo apt autoclean
        print_success "APT system update complete"

    else
        print_error "No supported package manager found - skipping"
        return 1
    fi
}

update_flatpak() {
    print_header "Flatpak"
    if ! command_exists flatpak; then
        print_skip "Flatpak not installed - skipping"
        return 0
    fi

    print_info "Running flatpak update..."
    if flatpak update -y; then
        print_success "Flatpak updates applied"
    else
        print_warn "Flatpak finished with some warnings"
    fi
}

update_snap() {
    print_header "Snap"

    if ! command_exists snap; then
        print_skip "Snap not installed - skipping"
        return 0
    fi

    print_info "Running snap refresh..."
    local output
    output=$(sudo snap refresh 2>&1) || true
    while IFS= read -r line; do
        echo -e "  ${DIM}${line}${RESET}"
    done <<< "$output"

    if echo "$output" | grep -q "All snaps up to date"; then
        print_success "All snaps are already up to date"
    else
        print_success "Snap updates applied"
    fi
}

# ── Logo ───────────────────────────────────────────────────────────────────────

# Banner rows, ANSI Shadow figlet font. All 46 columns wide; keep them that way
# or the gradient below will drift out of alignment with the letterforms.
LOGO_ROWS=(
    ' ██████╗ ██╗  ██╗██████╗ ███████╗██╗   ██╗ ██╗'
    '██╔═████╗╚██╗██╔╝██╔══██╗██╔════╝██║   ██║███║'
    '██║██╔██║ ╚███╔╝ ██║  ██║█████╗  ██║   ██║╚██║'
    '████╔╝██║ ██╔██╗ ██║  ██║██╔══╝  ╚██╗ ██╔╝ ██║'
    '╚██████╔╝██╔╝ ██╗██████╔╝███████╗ ╚████╔╝  ██║'
    ' ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝  ╚═══╝   ╚═╝'
)

# Per-column colours for the banner: azure #2347A9 to ice #526664, left to
# right, blended in Oklab. The letters stay calm; the rule below runs petal
# into azure, the two colours Prism Day is built on.
# One entry per column, 46 total.
LOGO_GRAD=(
    "35;71;169" "36;72;168" "37;73;166" "37;74;165" "38;75;163" "39;76;162"
    "40;77;160" "41;78;159" "42;79;158" "43;80;156" "44;81;155" "45;81;153"
    "46;82;152" "47;83;150" "48;84;149" "49;85;147" "50;85;146" "51;86;144"
    "52;87;143" "53;88;141" "54;88;140" "55;89;139" "56;90;137" "57;90;135"
    "59;91;134" "60;92;132" "61;92;131" "62;93;129" "63;93;128" "64;94;126"
    "65;95;125" "66;95;123" "67;96;122" "68;96;120" "70;97;118" "71;97;117"
    "72;98;115" "73;98;114" "74;99;112" "75;99;110" "76;100;109" "77;100;107"
    "79;101;105" "80;101;103" "81;102;102" "82;102;100"
)

# Draw the banner one character at a time, colouring by column index so the
# gradient runs horizontally across the whole word. Every glyph gets the ramp,
# including the box-drawing bevel characters (╔ ═ ╗ ║ ╚ ╝) - colouring those
# separately puts stray marks inside the 0, the D bowl and the e, which reads
# as noise sitting on top of the letters rather than as depth.
print_logo() {
    # figlet rows are multibyte; force a UTF-8 locale so ${row:i:1} steps by
    # character instead of by byte. Local to this function only.
    local LC_ALL=C.UTF-8
    local row ch out i

    echo
    for row in "${LOGO_ROWS[@]}"; do
        out=""
        for (( i = 0; i < ${#row}; i++ )); do
            ch="${row:i:1}"
            if [ "$ch" = " " ]; then
                out+=" "
            else
                out+=$'\033[1;38;2;'"${LOGO_GRAD[i]}"$'m'"$ch"
            fi
        done
        printf '  %s%s\n' "$out" "$RESET"
    done

    echo
    printf "  ${EDGE}━━━━━━━━━━━━━━━━━━━━━━━${HIGH}━━━━━━━━━━━━━━━━━━━━━━━${RESET}\n"
    printf "  ${DIM}  Pop!_OS · COSMIC DE · System Update${RESET}\n"
    printf "  ${DIM}  %s${RESET}\n" "$(date '+%A %d %B %Y  %H:%M:%S')"
    echo
}

# ── Main ───────────────────────────────────────────────────────────────────────

main() {
    local start_time end_time duration

    print_logo

    start_time=$(date +%s)

    update_system || {
        print_error "System package update failed - continuing with remaining tasks"
    }

    update_flatpak
#    update_snap

    end_time=$(date +%s)
    duration=$((end_time - start_time))

    echo
    echo -e "${EDGE}${BOLD}└─ All done ${DIM}──────────────────────────────────${RESET}"
    printf "   ${HIGH}✓ Completed in ${BOLD}%dm %ds${RESET}\n" \
        $((duration / 60)) $((duration % 60))
    echo
}

main
