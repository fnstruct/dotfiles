# SPDX-License-Identifier: MIT

# Pre-append directories to PATH
# See: github.com/jonpalmisc/dotfiles

path_prepend() {
	[ -d "$1" ] && path=($1 $path)
}

# Homebrew
path_prepend "/opt/homebrew/sbin"
path_prepend "/opt/homebrew/bin"
