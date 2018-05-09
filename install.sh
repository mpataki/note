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

uname=`uname`

print_with_color $GREEN 'Installing github/markup gem'
gem install github-markup

print_with_color $GREEN 'Installing github/markdown gem'
gem install github-markdown

print_with_color $GREEN 'Installing `note` to /usr/local/bin'
cp ./note /usr/local/bin

print_with_color $GREEN 'Installing bash completion script'
if [[ "$uname" == 'Linux' ]]; then
  sudo mkdir /etc/bash_completion.d
  sudo cp `pwd`/bash_completion.d/note /etc/bash_completion.d
else
  cp `pwd`/bash_completion.d/note /usr/local/etc/bash_completion.d
fi

print_with_color $GREEN 'Installing zsh completion script'
mkdir -p ~/.zsh/completions
cp `pwd`/zsh_completion/_note ~/.zsh/completions

echo ''
print_with_color $BLUE 'Here are some useful environment variables:'
print_with_color $BLUE 'LOCAL_NOTE_STORE: local directory where notes will be stored'
print_with_color $BLUE 'NOTES_S3_BUCKET: AWS S3 bucket for cloud storage'
print_with_color $BLUE 'NOTES_AWS_PROFILE: AWS profile to use when interacting with S3'

