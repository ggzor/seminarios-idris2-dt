#!/usr/bin/env bash

set -euo pipefail
shopt -s nullglob extglob

check-idris-file() {
  (
    cd "$1"
    idris2 -c "$2"
  )
}

check-idris-files() {
  directory="$1"

  if (( $# == 1 )); then
    files=("$directory"/*.idr)
  else
    shift
    files=("${@/#/"$directory"}")
  fi

  echo -e "\e[2mChecking Idris2 files:\e[0m"

  for f in "${files[@]}"; do
    if check-idris-file "$directory" "$(basename "$f")"; then
      echo -e "\e[32m  Checked: $f\e[0m"
    else
      echo -e "\e[31mFailed: $f\e[0m"
      exit 1
    fi
  done
}

vimfix() {
  vim "$1" -s <(printf '
    :set noundofile
    %s
    :wq
    ' "$2")
}

