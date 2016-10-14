#!/usr/bin/env bash

# Show directories before files
gsettings set org.gnome.nautilus.preferences sort-directories-first true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true

# Show date in clock
gsettings set org.gnome.desktop.interface clock-show-date true

