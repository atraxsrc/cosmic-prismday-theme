# Prism Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-prismday-theme/zsh/prismday.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #DFEAEC   fg:      #242B3D
#  petal:   #804C4F   coral:   #963E36
#  ruby:    #B52817   azure:   #2347A9
#  ice:     #526664   teal:    #306B65
#  muted:   #515B7C   dim:     #7B8CAD
#
# Light terminal: petal for commands, azure for strings, ice for links,
# ruby only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;48;107;101:ln=3;38;2;82;102;100:ex=1;38;2;128;76;79:*.zip=4;38;2;150;62;54:*.tar=4;38;2;150;62;54:*.gz=4;38;2;150;62;54:*.xz=4;38;2;150;62;54:*.7z=4;38;2;150;62;54:*.deb=4;38;2;150;62;54:*.png=38;2;81;91;124:*.jpg=38;2;81;91;124:*.jpeg=38;2;81;91;124:*.webp=38;2;81;91;124:*.gif=38;2;81;91;124:*.mp4=3;38;2;81;91;124:*.mkv=3;38;2;81;91;124:*.rs=38;2;35;71;169:*.py=38;2;35;71;169:*.js=38;2;35;71;169:*.ts=38;2;35;71;169:*.sh=38;2;35;71;169:*.md=38;2;77;86;112:*.txt=38;2;77;86;112:or=9;38;2;181;40;23"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5D7F90'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#804C4F'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#804C4F'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#804C4F'
ZSH_HIGHLIGHT_STYLES[function]='fg=#804C4F'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#804C4F'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#804C4F,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#2347A9,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#306B65,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#B52817,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#4D5670,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#963E36'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#963E36'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#515B7C'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#515B7C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#2347A9'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#2347A9'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#2347A9'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#515B7C'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#515B7C'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#7B8CAD'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
