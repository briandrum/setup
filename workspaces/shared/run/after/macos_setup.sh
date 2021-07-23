#!/bin/sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

(
    cd "$SCRIPT_DIR/../lib"

    echo "Adding Terminal theme..."
    if ! defaults read com.apple.Terminal "Window Settings" | grep -Fw Brian >/dev/null; then
        open -a Terminal assets/Brian.terminal
    fi
)

echo "Resetting QuickLook."
set -x
qlmanage -r
qlmanage -r cache
killall Finder
set +x
