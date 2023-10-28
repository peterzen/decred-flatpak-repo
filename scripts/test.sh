#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")
source $SCRIPT_DIR/env

flatpak remote-add --user --if-not-exists --no-gpg-verify test-repo $REPO_DIR
flatpak install -y --reinstall --user test-repo org.decred.dcrdex
flatpak run --user org.decred.dcrdex "$@"