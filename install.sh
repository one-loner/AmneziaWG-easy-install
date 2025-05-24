#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
apt-get update
apt-get install -y curl docker
ip=$(curl http://ifconfig.me)
docker run -d \
  --name=amnezia-wg \
  -e LANG=en \
  -e WG_HOST="$ip"\
  -e PASSWORD_HASH='$2a$12$s3pcE/AB0/fsUbcE/HDFoO9a63Yv6ux11UyjsfnQ0SbegqDOBywhq' \
  -e PORT=51821 \
  -e WG_PORT=161 \
  -v ~/.amnezia-wg-easy:/etc/wireguard \
  -p 161:161/udp \
  -p 127.0.0.1:51821:51821/tcp \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --sysctl="net.ipv4.ip_forward=1" \
  --device=/dev/net/tun:/dev/net/tun \
  --restart always \
  ghcr.io/w0rng/amnezia-wg-easy

echo "Forward port 51821 from your local computer by ssh -L 51821:localhost:51821 <username>@$ip, then open 127.0.0.1:51821 in your browser and enter YOUR_PASSWORD as password. Next create users for your AmneziaWG server"
