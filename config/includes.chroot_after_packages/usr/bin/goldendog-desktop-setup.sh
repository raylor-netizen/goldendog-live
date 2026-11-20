#!/bin/bash
# GoldenDog Desktop Setup Script
# This script runs on user login to ensure localized desktop icons are present.

# Load system locale to ensure xdg-user-dir returns correctly localized paths
if [ -f /etc/default/locale ]; then
    . /etc/default/locale
    export LANG
fi

MARKER="$HOME/.config/goldendog-desktop-setup.done"
SOURCE_DIR="/usr/share/goldendog/desktop-items"

# Only run once per user
if [ ! -f "$MARKER" ]; then
    # Give the desktop environment a moment to settle
    sleep 2
    # Ensure current user directories are initialized and localized
    xdg-user-dirs-update

    # Get the localized Desktop directory using xdg-user-dir
    DESKTOP_DIR=$(xdg-user-dir DESKTOP)

    # If xdg-user-dir failed or returned home, fallback to Desktop
    if [ "$DESKTOP_DIR" = "$HOME" ] || [ -z "$DESKTOP_DIR" ]; then
        DESKTOP_DIR="$HOME/Desktop"
    fi

    # Ensure the directory exists before copying
    mkdir -p "$DESKTOP_DIR"

    if [ -d "$SOURCE_DIR" ]; then
        # Copy icons to the localized Desktop
        cp "$SOURCE_DIR"/*.desktop "$DESKTOP_DIR/"
        # Ensure the user owns the copied files and they are executable
        chmod +x "$DESKTOP_DIR"/*.desktop
        
        # Create marker to avoid running again
        mkdir -p "$(dirname "$MARKER")"
        touch "$MARKER"
    fi
fi
