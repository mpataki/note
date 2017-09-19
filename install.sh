#! /bin/bash

RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
WHITE="\e[37m"
NONE="\e[39m"

function print_with_color() {
  color=$1
  string=$2
  printf "$color$string$NONE\n"
}

print_with_color $GREEN 'Installing github/markup gem'
gem install github-markup

print_with_color $GREEN 'Installing github/markdown gem'
gem install github-markdown

print_with_color $GREEN 'Installing `note` to /usr/local/bin'
cp ./note /usr/local/bin

print_with_color $GREEN 'linking bash completion script'
ln -s `pwd`/bash_completion.d/note /usr/local/etc/bash_completion.d

