#!/bin/bash

newUser() {
    useradd -rm -d /home/youssef -s /bin/bash youssef
    echo "youssef:1234" | chpasswd
    echo "Bienvenido youssef" > /home/youssef/README.txt
}

main() {
    newUser
    tail -f /dev/null
}

main
