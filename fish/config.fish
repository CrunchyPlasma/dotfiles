# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"


fish_vi_key_bindings

# Aliases

alias vi='nvim'
#alias sl='exa'
#alias ls='exa'
#alias la='exa -a'
alias cr='cd /'
alias gs='git status'


# Exports
set -x EDITOR nvim
set -x VISUAL nvim
set -x TERMINAL termite
set -x TERM termite
