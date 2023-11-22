#!/usr/bin/env zsh
echo "Installing DNSCrypt with DoH (CloudFlare) configuration and DNSMasq"
brew install dnscrypt-proxy
brew install dnsmasq

mv /usr/local/etc/dnscrypt-proxy.toml /usr/local/etc/dnscrypt-proxy.toml.org
curl -O /usr/local/etc/dnscrypt-proxy.toml https://gist.githubusercontent.com/niftylettuce/fb9a03634165137476568c43791c5e11/raw/2cd1b082698eb2b1b21da98056f7fcb891bcfbd1/dnscrypt-proxy.toml

mv /usr/local/etc/dnsmasq.conf /usr/local/etc/dnsmasq.conf.org
curl -O /usr/local/etc/dnsmasq.conf https://gist.githubusercontent.com/niftylettuce/fb9a03634165137476568c43791c5e11/raw/2cd1b082698eb2b1b21da98056f7fcb891bcfbd1/dnsmasq.conf

mv /Library/LaunchDaemons/homebrew.mxcl.dnscrypt-proxy.plist /Library/LaunchDaemons/homebrew.mxcl.dnscrypt-proxy.plist.org
curl -O /Library/LaunchDaemons/homebrew.mxcl.dnscrypt-proxy.plist https://gist.githubusercontent.com/niftylettuce/fb9a03634165137476568c43791c5e11/raw/2cd1b082698eb2b1b21da98056f7fcb891bcfbd1/homebrew.mxcl.dnscrypt-proxy.plist

mv /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist.org
curl -O /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist https://gist.githubusercontent.com/niftylettuce/fb9a03634165137476568c43791c5e11/raw/2cd1b082698eb2b1b21da98056f7fcb891bcfbd1/homebrew.mxcl.dnsmasq.plist

sudo brew services restart dnscrypt-proxy
sudo brew services restart dnsmasq

sudo launchctl unload homebrew.mxcl.dnscrypt-proxy.plist && sudo launchctl load homebrew.mxcl.dnscrypt-proxy.plist
sudo launchctl unload homebrew.mxcl.dnsmasq.plist && sudo launchctl load homebrew.mxcl.dnsmasq.plist

nslookup -type=TXT resolver.dnscrypt.info
