#!/bin/bash

set -euo pipefail

declare -ra LANGS=(pl ru)

main() {
  set -x
  build_fonts_mpq
  du -sh *.mpq
}

build_fonts_mpq() {
  if ! which pcx2clx; then
    echo "Please install pcx2clx from https://github.com/diasurgical/devilutionx-graphics-tools/"
    exit 1
  fi
  rm -f fonts.mpq
  mkdir -p build/fonts
  touch build/fonts/12-4e.clx
  pcx2clx --output-dir build/fonts --transparent-color 1 --num-sprites 256 --quiet assets/fonts/*.pcx
  cd build
  find fonts -type f -exec smpq -M 1 -C BZIP2 -c ../fonts.mpq '{}' '+'
  cd -
}

main "$@"
