#!/bin/sh

for i in {1..10}; do
curl \
  -H "X-Callback-Url: http://gateway:8080/async-function/service1"  \
  -i \
  "http://localhost:8080/async-function/fn-a" \
  -d "Req {$i}" 
done
