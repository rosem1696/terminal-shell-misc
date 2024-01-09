#!/usr/bin/env bash

set -e

# Install ohmyposh
echo "Installing ohmyposh"
curl -s https://ohmyposh.dev/install.sh | bash -s

# Download theme
echo "Downloading Power Level 10k Rainbow Theme"
mkdir -p ~/ohmyposh
pushd ~/ohmyposh >/dev/null
curl -O https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/powerlevel10k_rainbow.omp.json
popd >/dev/null

# Set in profile or bashrc
echo "
# Start ohmyposh
eval \"$(oh-my-posh init bash --config ~/ohmyposh/powerlevel10k_rainbow.omp.json)\"
" >>~/.bashrc
