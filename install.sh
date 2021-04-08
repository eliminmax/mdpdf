#!/usr/bin/env bash

export INSTALL_PATH=${MDPDF_INSTALL_PATH:-'~/.local/bin/mdpdf'}
export CSS_PATH=${MDPDF_CSS_PATH:-'~/.local/share/mdpdf/custom.css'}

mkdir -p $(dirname ${INSTALL_PATH}) $(dirname ${CSS_PATH})

cd $(dirname $0)

cp custom.css ${CSS_PATH}

envsubst < mdpdf > ${INSTALL_PATH}

chmod +x ${INSTALL_PATH}
