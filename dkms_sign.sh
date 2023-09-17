#!/bin/bash

VERSION="$(uname -r)"
SHORT_VERSION="$(uname -r | cut -d - -f 1-2)"
MODULES_DIR=/lib/modules/$VERSION
KBUILD_DIR=/usr/lib/linux-kbuild-$SHORT_VERSION
cd "$MODULES_DIR/updates/dkms"
echo -n "Passphrase for MOK: "
read -s KBUILD_SIGN_PIN
export KBUILD_SIGN_PIN

find -name \*.ko | while read i; do sudo --preserve-env=KBUILD_SIGN_PIN "$KBUILD_DIR"/scripts/sign-file sha256 /var/lib/shim-signed/mok/MOK.priv /var/lib/shim-signed/mok/MOK.der "$i" || break; done
