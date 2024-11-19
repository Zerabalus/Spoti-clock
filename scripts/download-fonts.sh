#!/bin/bash

set -eu

check_command() {
    local command="$1"
    if ! command -v "$command" >/dev/null; then
        echo "Command '$command' is required and was not installed." >&2
        exit 1
    fi
}

# Verifica que las herramientas necesarias estén disponibles
check_command fc-list

# Nombre de la fuente que queremos usar
font_name="ProFont IIx Nerd Font Mono"

# Verificar si la fuente está instalada
if fc-list | grep -q "$font_name"; then
    echo "Font $(tput setaf 2)$font_name$(tput sgr0) is available in the system."
else
    echo "Font $(tput setaf 1)$font_name$(tput sgr0) is NOT installed. Please install it manually."
    exit 1
fi

echo "Script ready to use the specified font."

