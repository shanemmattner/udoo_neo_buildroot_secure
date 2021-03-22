#!/bin/sh
# post-image-signatures.sh - build full .itb image with signatures

set -e

BOARD_DIR="$( dirname "${0}" )"
KEYS_DIR="${BOARD_DIR}/../../keys"
MKIMAGE="${HOST_DIR}/bin/mkimage"
IMAGE_ITS="image.its"
OUTPUT_NAME="image.itb"

# We have to copy .its file over to images/ for /incbin/ to work
cp "${BOARD_DIR}/${IMAGE_ITS}" "${BINARIES_DIR}"

cd "${BINARIES_DIR}"

echo " -> Building..."
"${MKIMAGE}" -D "-I dts -O dtb -p 2000" -f ${IMAGE_ITS} ${OUTPUT_NAME}

echo " -> Signing..."
"${MKIMAGE}" -D "-I dts -O dtb -p 2000" -F -k "${KEYS_DIR}" -K "${BUILD_DIR}/uboot-2017.03/dts/dt.dtb" -r ${OUTPUT_NAME}

rm ${IMAGE_ITS}

# Rebuild uboot with patched dtb
cd "${BUILD_DIR}/.."
make uboot-rebuild
