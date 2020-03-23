#!/usr/bin/env bash

pacman -Q > pacman.all
pacman -Qe > pacman.explicit
pacman -Qm > pacman.foreign

git add pacman.*
git commit -m "$1"
