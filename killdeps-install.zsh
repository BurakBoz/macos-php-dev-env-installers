#!/usr/bin/env zsh
echo "Installing killdeps.."
(sudo wget -O /usr/local/bin/killdeps https://raw.githubusercontent.com/burakboz/killdeps/master/bin/killdeps && sudo chmod +x /usr/local/bin/killdeps && echo "Installation complete! Enjoy.") || echo "Installation failed."