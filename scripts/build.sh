#!/usr/bin/env bash

set -ex

SCRIPT_DIR=$(dirname "$0")
source $SCRIPT_DIR/env

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak-builder $BUILD_DIR org.decred.dcrdex.yml \
    -v \
    --user \
    --ccache \
    --install \
    --install-deps-from=flathub \
    --force-clean \
    --repo=$REPO_DIR
    #--no-debuginfo \

