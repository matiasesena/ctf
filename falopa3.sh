#!/bin/sh

echo "--- START ---" > /tmp/file.txt

for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "---$pid---" >> /tmp/file.txt;
    echo "perf record -p $pid -o /tmp/cc.data -g -a sleep 5" >> /tmp/file.txt;
    echo $(perf record -p $pid -o /tmp/cc.data -g -a sleep 5) >> /tmp/file.txt;
done

echo "--- FINISH ---" >> /tmp/file.txt
curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net

rm /tmp/file.txt
