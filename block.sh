sudo ipset create blacklist hash:ip hashsize 4096
sudo iptables -I INPUT -m set --match-set blacklist src -j DROP
sudo iptables -I FORWARD -m set --match-set blacklist src -j DROP
sudo ipset add blacklist 168.61.49.99
sudo ipset add blacklist 23.99.5.239
sudo ipset add blacklist 168.61.48.131
sudo ipset add blacklist 138.91.141.162
sudo ipset add blacklist 23.102.235.122
sudo ipset add blacklist 52.175.38.134
sudo ipset add blacklist 13.76.245.160
sudo ipset add blacklist 13.76.136.249
sudo ipset add blacklist 104.210.84.115
sudo ipset add blacklist 13.75.152.195
sudo ipset add blacklist 13.77.2.56
sudo ipset add blacklist 13.77.2.94
sudo ipset add blacklist 191.235.84.104
sudo ipset add blacklist 191.235.87.113
sudo ipset add blacklist 52.229.127.96
sudo ipset add blacklist 52.229.123.172
sudo ipset add blacklist 52.228.37.66
sudo ipset add blacklist 52.228.45.222
sudo ipset add blacklist 52.164.210.96
sudo ipset add blacklist 13.74.153.132
sudo ipset add blacklist 52.166.243.90
sudo ipset add blacklist 52.174.36.244
sudo ipset add blacklist 20.188.39.64
sudo ipset add blacklist 40.89.157.135
sudo ipset add blacklist 51.4.146.68
sudo ipset add blacklist 51.4.146.80
sudo ipset add blacklist 51.5.150.132
sudo ipset add blacklist 51.5.144.101
sudo ipset add blacklist 52.172.153.209
sudo ipset add blacklist 52.172.152.49
sudo ipset add blacklist 104.211.223.67
sudo ipset add blacklist 104.211.216.210
sudo ipset add blacklist 13.89.171.122
sudo ipset add blacklist 13.89.171.124
sudo ipset add blacklist 13.82.225.233
sudo ipset add blacklist 40.71.175.99
sudo ipset add blacklist 157.56.8.38
sudo ipset add blacklist 157.55.213.99
sudo ipset add blacklist 52.161.23.15
sudo ipset add blacklist 52.161.10.167
sudo ipset add blacklist 13.64.254.98
sudo ipset add blacklist 23.101.196.19
sudo ipset add blacklist 52.175.211.210
sudo ipset add blacklist 52.175.222.222



sudo iptables -I OUTPUT 1 -p tcp --sport 22 -j ACCEPT
sudo iptables -I OUTPUT 2 -p tcp --sport 23 -j ACCEPT
sudo iptables -I OUTPUT 3 -p tcp -d portal.azure.com --dport 443 -j ACCEPT
sudo iptables -I OUTPUT 4 -p tcp -d azurehdinsight.net --dport 443 -j ACCEPT
