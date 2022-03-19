#!/bin/sh

envfile="$(dirname "$(realpath "$0")")/install.env"

if [ -f "$envfile" ]; then
    . "$envfile"
else
    INSTALL_PATH="${MDPDF_INSTALL_PATH:-'~/.local/bin/mdpdf'}"
    CSS_PATH="${MDPDF_CSS_PATH:-'~/.local/share/mdpdf/custom.css'}"
fi

rm "$INSTALL_PATH"
rm "$CSS_PATH"
