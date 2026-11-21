#!/usr/bin/env bash
# Tetofeed — Konsole & kitty Colours — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
K=${XDG_DATA_HOME:-$HOME/.local/share}/konsole; mkdir -p "$K"
cp "$HERE"/Tetofeed.colorscheme "$HERE"/Tetofeed.profile "$K"/
C=${XDG_CONFIG_HOME:-$HOME/.config}/kitty; mkdir -p "$C"; cp "$HERE"/tetofeed-kitty.conf "$C"/
echo "Konsole: Settings > Switch Profile > Tetofeed.   kitty: add 'include tetofeed-kitty.conf' to kitty.conf"
