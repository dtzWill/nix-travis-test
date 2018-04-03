#!/bin/sh

mkdir -p ~/.config/nix

# Use the ALLVM binary cache in addition to default NixOS cache
# Also, ensure sandbox support is enabled
cat > ~/.config/nix/nix.conf <<EOF
substituters = https://cache.nixos.org https://cache.allvm.org
trusted-public-keys = gravity.cs.illinois.edu-1:yymmNS/WMf0iTj2NnD0nrVV8cBOXM9ivAkEdO1Lro3U= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=
sandbox = true
EOF

# Build (uses ./default.nix)
nix-build
