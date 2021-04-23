#!/usr/bin/env bash

set -euo pipefail
shopt -s nullglob extglob

source '../scripts/utils.sh'

# Generar segundo archivo de pruebas
cp soluciones/AdtsBoolTests.idr soluciones/AdtsNandTests.idr
vimfix soluciones/AdtsNandTests.idr '
/AdtsBoolTests
:s//AdtsNandTests
/AdtsBool
:s//AdtsNand
'

check-idris-files soluciones

echo "Generando ejercicios..."

mkdir -p ejercicios

cp -t ejercicios/ \
  soluciones/AdtsBool.idr \
  soluciones/AdtsBoolTests.idr \
  soluciones/AdtsNand.idr \
  soluciones/AdtsNandTests.idr \

# Ejercicios Bool
vimfix ejercicios/AdtsBool.idr '
/inician los problemas
:.,$g/:/exec "normal! j_d}"
'

vimfix ejercicios/AdtsBoolTests.idr '
/idb
:.,$g/Refl/normal! _i--
'

# Ejercicios NAND
vimfix ejercicios/AdtsNand.idr '
/inician los problemas
:.,$g/:/exec "normal! j_\"ayef=llDi ?res_\<Esc>\"ap"
'

vimfix ejercicios/AdtsNandTests.idr '
/idb
:.,$g/Refl/normal! _i--
'

check-idris-files ejercicios
