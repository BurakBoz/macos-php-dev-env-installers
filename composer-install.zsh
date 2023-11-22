#!/usr/bin/env zsh
echo "Installing composer.."
(sudo wget -O /usr/local/bin/composer https://getcomposer.org/download/latest-stable/composer.phar && sudo chmod +x /usr/local/bin/composer && echo "Installation complete! Enjoy.") || echo "Installation failed."