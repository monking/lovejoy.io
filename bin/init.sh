#!/bin/bash
cd `dirname $0`/..
project_root=`pwd`
cd $project_root
mkdir -p \
  app \
  data \
  public/data \
  public/static/css \
  public/static/js \
  src/app/js/lib \
  src/data \
  src/public/js/lib \
  src/public/sass/lib \
;

if [[ ! -f $project_root/src/public/js/backbone-min.js ]]; then
  cd "$project_root/src/public/js"
  wget https://raw.github.com/jashkenas/backbone/master/backbone-min.js
fi

if [[ ! -f $project_root/src/public/js/underscore-min.js ]]; then
  cd "$project_root/src/public/js"
  wget https://raw.github.com/jashkenas/underscore/master/underscore-min.js
fi

if [[ ! -f $project_root/data/portfolio.json ]]; then
  touch "$project_root/data/portfolio.json"
  cd "$project_root/public/data"
  ln -s ../../data/portfolio.json
fi
