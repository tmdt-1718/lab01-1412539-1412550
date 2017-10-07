#!/bin/bash
# Start up scripts
rm -f /web/tmp/pids/server.pid
bundle install
rails db:create
rails db:migrate #tao cau truc du lieu
echo "seed"
rails db:seed #tao du lieu mau
rails s -b 0.0.0.0
