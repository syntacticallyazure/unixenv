#!/usr/bin/env bash

if [ -d "$HOME/.bashrc.d" ]; then
  for file in "$HOME"/.bashrc.d/*; do
    [ -r "$file" ] && [ -f "$file" ] && . "$file"
  done
fi
