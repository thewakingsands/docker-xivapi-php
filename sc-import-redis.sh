#!/bin/bash

count=$(ls /vagrant/data/SaintCoinach.Cmd/Definitions | wc -l)

for (( i = 0; i <= count; ++i )); do
    echo "# $i"
    php /vagrant/bin/console SaintCoinachRedisCommand $i 1 1 -q
done

