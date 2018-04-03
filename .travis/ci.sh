#!/bin/sh

mkdir -p ~/.config/nix

cat > ~/.config/nix/nix.conf <<EOF
binary-caches https://cache.nixos.org https://cache.allvm.org
trusted-public-keys gravity.cs.illinois.edu-1:yymmNS/WMf0iTj2NnD0nrVV8cBOXM9ivAkEdO1Lro3U= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=
sandbox true
EOF

nix-store -r /nix/store/d2r8lw84vyqy49jnnkj54jxkwpgjpm62-coreutils-8.29-wllvm-allexe
