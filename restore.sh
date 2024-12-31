#!/bin/bash

DIR="nvim"
TARGET_DIR="$HOME/.config/$DIR"
CURRENT_DIR=$(pwd)

if [[ ! -d "$CURRENT_DIR/recover" || ! -z  "$(ls -A "$CURRENT_DIR/recover")" ]]; then
  echo "Oooo unable to recover, directory not found :( ..."
  sleep 0.4
  exit 1
fi

echo "Removing sam's neovim config ;( ..."

read -p "Are you sure to remove your nvim config?(y/N)" confirm
  sleep 0.4

if [[ $confirm == 'y' || $confirm == 'Y' ]]; then 
  echo "Restoring your previous configuration ..."
  rm -rf "$TARGET_DIR"/*
  mv "$CURRENT_DIR/recover"/* "$TARGET_DIR/"
  rm -rf "$CURRENT_DIR/recover"
  sleep 0.4
else 
  echo "Cancling Recovery ..."
  sleep 0.4
  exit 1
fi
