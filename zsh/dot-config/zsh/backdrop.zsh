# SPDX-License-Identifier: MIT

# Pre-append directories to PATH
# See: https://github.com/jonpalmisc/dotfiles

path-prepend() {
    [ -d "$1" ] && path=($1 $path)
}

# Homebrew
path-prepend "/opt/homebrew/sbin"
path-prepend "/opt/homebrew/bin"
