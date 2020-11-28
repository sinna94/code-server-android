ip=`ip addr | 
    grep swlan0 |
    grep 192 | 
    awk '{split($2, arr,"/"); print arr[1]}'`

sed -i "1s/.*/bind-addr: ${ip}:8080/g" ~/.config/code-server/config.yaml

code-server &