#!/bin/bash
set -e

rm -rf build
cp -r site build 

find ./site/*.html -exec sh -c 'cat ./template/header.html $0 ./template/footer.html > ./build/$(basename $0)' {} \;