#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

IFS=$'\n\t'

__DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "${__DIR}"

# https://github.com/Ciantic/VirtualDesktopAccessor/issues/51#issue-1123702656
curl -L \
    https://github.com/skottmckay/VirtualDesktopAccessor/blob/master/x64/Release/VirtualDesktopAccessor.dll?raw=true \
    -o VirtualDesktopAccessor.dll
