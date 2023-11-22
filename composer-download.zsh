#!/usr/bin/env zsh
(wget -O composer.phar https://getcomposer.org/download/latest-stable/composer.phar && echo "Latest stable composer.phar downloaded to $(pwd) folder.") || echo "Download failed!"