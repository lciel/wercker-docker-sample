#!/bin/sh
cd /app

if [ ! -e log ]; then
    mkdir -p log
fi

exec /sbin/setuser app bundle exec unicorn -c config/unicorn.rb

