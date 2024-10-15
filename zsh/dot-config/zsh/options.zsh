# SPDX-License-Identifier: MIT

# Configure general ZSH options

# Remove and never allow duplicates in history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Ignore duplicates in searches as well
setopt HIST_FIND_NO_DUPS

# Configure and enable completions
completion-prepend() {
    [ -d "$1" ] && fpath=($1 $fpath)
}

completion-prepend "/opt/homebrew/share/zsh/site-functions"

autoload -Uz compinit
compinit
_comp_options+=(globdots)

# Always insert the first completion when requested
# and always list all options when requested
setopt AUTO_LIST
setopt COMPLETE_IN_WORD
setopt MENU_COMPLETE
