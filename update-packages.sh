#!/usr/bin/env bash

pacman -Q > pacman.all
pacman -Qe > pacman.explicit
pacman -Qm > pacman.foreign
git add pacman.*

pkgs=''
if [ -n $1 ]; then
  pkgs=" ($1)"
fi
git commit -m "$(</etc/hostname) - installed packages${pkgs}"
