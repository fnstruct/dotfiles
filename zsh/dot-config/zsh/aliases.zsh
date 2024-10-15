# SPDX-License-Identifier: MIT

# Alises are made on the basis of availability
aliased-on-availability() {
    if command -v "$2" &>/dev/null; then
        alias "$1=$3"
    fi
}

# Use lsd when listing files
aliased-on-availability "ls" "lsd" "lsd -a"
