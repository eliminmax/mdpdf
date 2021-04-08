# mdpdf

A simple wrapper for [markdown-pdf](https://github.com/alanshaw/markdown-pdf), which automatically uses the settings I find most usefull as defaults.

Depends entirely on markdown-pdf, which can be installed with `npm install -g markdown-pdf --ignore-scripts`.

To install with the install script, run `./install.sh`

If the `MDPDF_CSS_PATH` environment variable is set, `install.sh` will copy `custom.css` to that path. Otherwise, it will copy it to `~/.local/share/mdpdf/custom.css`. Similarly, if the `MDPDF_INSTALL_PATH` environment path is set, the actual `mdpdf` executable is created there, otherwise, it's created at `~/.local/bin/mdpdf`, using `envsubst` to set the CSS path.

**install.sh is currently untested, and written with the assumption that these variables contain the full file path (as in `~/path/to/custom.css` instead of `~/path/to`). It is provided for convinience, with no promise that it will work as intended.** If it does not work, manually copy `custom.css` and `mdpdf` to whichever directories you want them in, then replace `$CSS_PATH` with the actual path to custom.css in `mdpdf`
