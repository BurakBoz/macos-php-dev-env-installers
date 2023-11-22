#!/usr/bin/env zsh
echo "Installing composer.."
(sudo wget -O /usr/local/bin/composer https://getcomposer.org/download/latest-stable/composer.phar && echo "Installation complete! Enjoy.") || echo "Installation failed."