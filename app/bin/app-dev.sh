#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

OUT_DIR=./app/_build/dev

rm -rf "${OUT_DIR}"
mkdir -p "${OUT_DIR}"
parcel serve ./app/src/index.pug \
	--out-dir "${OUT_DIR}" \
	--port 1234 \
	--hmr-port 4321 \
	--log-level 4
