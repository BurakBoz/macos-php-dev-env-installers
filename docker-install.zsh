#!/usr/bin/env zsh
echo "Installing docker via lima.."
brew install lima docker docker-compose
limactl unprotect docker
rm -rf ~/.lima/docker
limactl factory-reset
echo -e "\n" | limactl start --vm-type=vz --mount-type=virtiofs --cpus=4 --memory=8 template://docker
docker context create lima-docker --docker "host=unix:///Users/$USER/.lima/docker/sock/docker.sock"
docker context use lima-docker
limactl protect docker
echo "This must be run with sudo"
sudo rm -rf /var/run/docker.sock
sudo ln -s "/Users/$USER/.lima/docker/sock/docker.sock" /var/run/docker.sock
mkdir -p "/Users/$USER/.docker/run"
sudo rm -rf "/Users/$USER/.docker/run/docker.sock"
sudo ln -s "/Users/$USER/.lima/docker/sock/docker.sock" "/Users/$USER/.docker/run/docker.sock"
echo "Docker installation complete! Enjoy."