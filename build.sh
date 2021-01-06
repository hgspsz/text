#!/bin/bash

rm -rf target
mkdir target
cd target
git pull https://github.com/hgspsz/theme

cp -r ../archectypes ./archectypes
cp -r ../content ./content
cp -r ../static ./static

docker run --rm -it -v $PWD:/src -p 1313:1313 -u hugo jguyomard/hugo-builder hugo -D