#!/bin/bash
set -e

HUGO_VERSION=0.114.3 # replace with your Hugo version

# Download Hugo Linux 64-bit extended binary
curl -sL -o hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Extract binary
tar -xzf hugo.tar.gz hugo

# Make it executable
chmod +x hugo

# Move to ./node_modules/.bin so npm scripts can see it
mkdir -p node_modules/.bin
mv hugo node_modules/.bin/