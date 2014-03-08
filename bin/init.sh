#!/bin/bash
project_root=`dirname $0`/..
cd $project_root
mkdir -p \
  app \
  public/static/css \
  public/static/js \
  src/app/js/lib \
  src/public/js/lib \
  src/public/sass/lib

cd $project_root/src/public/js
wget https://raw.github.com/jashkenas/backbone/master/backbone-min.js
