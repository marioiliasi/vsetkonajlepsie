#!/bin/bash

home_dir=`ls /home/ | grep dar`

for i in {1..32}
do
  echo "Happy birthday, sucker!" >> /home/$home_dir/happy_birthday$i
done
