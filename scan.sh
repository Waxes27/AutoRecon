#!/bin/bash

mkdir nmap
mkdir directories/medium -p
mkdir directories/small -p


xterm -e nmap -sC -sV -oA nmap/initial $1 -vvv&
xterm -e gobuster dir -u http://$1$2 -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt -o directories/small/$1-dirs.txt &
xterm -e gobuster dir -u http://$1$2 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o directories/medium/$1-dirs.txt &


xterm -e python3 -m http.server 8000
