#!/usr/bin/env bash

read -p "Enter your email for git config and ssh-key: " email
read -p "Enter your name for git config: " name

echo "-> Creating ssh-key for github"
ssh-keygen -t ed25519 -C "$email" -f $HOME/.ssh/github -N ""

echo "-> Base git configuration"
git config --global user.email "$email"
git config --global user.name "$name"
git config --global core.editor "nvim"

echo "-> Installing external application for Firefox extension 'Video DownloadHelper'"
curl -sSLf https://github.com/aclap-dev/vdhcoapp/releases/latest/download/install.sh | bash
