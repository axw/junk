#!/bin/sh

set -e

TARGET=$1
LINK_NAME=$2

if test -h "$LINK_NAME"; then
  rm "$LINK_NAME"
fi
ln -s "$TARGET" "$LINK_NAME"
readlink "$LINK_NAME"

