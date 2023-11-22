#!/usr/bin/env zsh
(sudo wget https://github.com/FriendsOfPHP/pickle/releases/latest/download/pickle.phar -O /usr/local/bin/pickle && sudo chmod +x /usr/local/bin/pickle && echo "pickle installed.") || echo "pickle installation failed." && exit
echo "Installing PHP extensions.."
(pickle install zip && echo "zip extension installed.") || echo "zip extension installation failed!"
(pickle install memcached && echo "memcached extension installed.") || echo "memcached extension installation failed!"
(pickle install igbinary && echo "igbinary extension installed.") || echo "igbinary extension installation failed!"
(pickle install msgpack && echo "msgpack extension installed.") || echo "msgpack extension installation failed!"
(pickle install redis && echo "redis extension installed.") || echo "redis extension installation failed!"
(pickle install swoole && echo "swoole extension installed.") || echo "swoole extension installation failed!"
echo "Installation complete! Enjoy."