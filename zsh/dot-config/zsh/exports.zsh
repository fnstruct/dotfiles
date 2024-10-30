# SPDX-License-Identifier: MIT

# Use different history file
export HISTFILE="$HOME/.zshhistory"

# Increase default history size
export HISTSIZE=3000
export SAVEHIST="$HISTSIZE"

convey-on-availability() {
    if command -v "$2" &>/dev/null; then
        export "$1=$2"
    fi
}

# Use less as the default PAGER
convey-on-availability "PAGER" "less"

# Use micro as default EDITOR and VISUAL
convey-on-availability "EDITOR" "micro"
convey-on-availability "VISUAL" "$EDITOR"

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# Golang
export GOPATH="$HOME/.cache/go"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/cache/mod"
