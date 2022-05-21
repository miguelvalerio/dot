#!/usr/bin/env bash

set -eo pipefail

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
 
yay -S i3-gaps betterlockscreen gvim powerline-fonts rofi spotify rxvt-unicode stow polybar nerd-fonts-complete

yay -S zsh zsh-completions

cd .zprezto && git submodule sync && git submodule update --init

chsh -s /usr/bin/zsh

stow -R -v .

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
