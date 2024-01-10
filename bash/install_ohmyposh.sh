#!/usr/bin/env bash

set -e

# Install ohmyposh
echo "Installing ohmyposh"
mkdir -p ~/ohmyposh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/ohmyposh

# Download theme
echo "Downloading Power Level 10k Rainbow Theme"
pushd ~/ohmyposh >/dev/null
curl -O https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/powerlevel10k_rainbow.omp.json
popd >/dev/null

# Set in profile or bashrc
echo "
# Start ohmyposh
export PATH=\$PATH:~/ohmyposh
eval \"\$(oh-my-posh init bash --config ~/ohmyposh/powerlevel10k_rainbow.omp.json)\"
" >>~/.bashrc
