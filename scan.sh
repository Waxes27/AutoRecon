#!/bin/bash

mkdir nmap
mkdir directories

xterm -e nmap -sC -sV -oA nmap/initial $1 -vvv&
xterm -e gobuster dir -u http://$1:$2 -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt -o directories/small_directory_listing.txt &
xterm -e gobuster dir -u http://$1:$2 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o directories/medium_directory_listing.txt &

xterm -e python3 -m http.server 8000
