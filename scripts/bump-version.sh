#!/bin/bash

VERSION="$1" # visible version 1.0.0, 1.0.1, 1.1.2, ...
BUILD="$2" # incremental number 1, 2, 3, ...

echo "Setting version to $VERSION ($BUILD)"

npm version --no-git-tag-version $VERSION
npx --yes --silent  react-native-version  -A -q -s $BUILD