#!/bin/bash

mkdir nmap
mkdir directories

xterm -e nmap -sC -sV -oA nmap/initial $1 -vvv&
xterm -e gobuster -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o directories/directory_listing.txt&

xterm -e gobuster -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt &
