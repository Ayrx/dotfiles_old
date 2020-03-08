#!/usr/bin/env bash

dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome_terminal.conf
dconf dump /org/cinnamon/ > cinnamon.conf
