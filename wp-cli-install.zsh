#!/usr/bin/env zsh
echo "Installing wp-cli.."
wget -N https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O wp
chmod +x wp
(sudo cp -f wp /usr/local/bin/wp && echo "Installation succeeded.") || echo "Installation failed!" && exit
echo "YXBhY2hlX21vZHVsZXM6CiAgLSBtb2RfcmV3aXRl" | base64 -d > ~/.wp-cli/config.yml
php wp --info
echo "Installing restful.."
wp package install wp-cli/restful
echo "WP-CLI installed! Enjoy."