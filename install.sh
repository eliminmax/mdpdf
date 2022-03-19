#!/bin/sh

INSTALL_PATH="${MDPDF_INSTALL_PATH:-'~/.local/bin/mdpdf'}"
CSS_PATH="${MDPDF_CSS_PATH:-'~/.local/share/mdpdf/custom.css'}"
mkdir -p "$(dirname "$INSTALL_PATH")" "$(dirname "$CSS_PATH")"

cd "$(dirname $0)"

cp custom.css "$CSS_PATH"

envsubst < mdpdf > "$INSTALL_PATH"

chmod +x "$INSTALL_PATH"

cat <<EOF > install.env
export INSTALL_PATH=$INSTALL_PATH
export CSS_PATH=$CSS_PATH
EOF
