#!/bin/sh

INSTALL_PATH="${MDPDF_INSTALL_PATH:-'~/.local/bin/mdpdf'}"
CSS_PATH="${MDPDF_CSS_PATH:-'~/.local/share/mdpdf/custom.css'}"

rm "$INSTALL_PATH"
rm "$CSS_PATH"
