#!/bin/bash

for user in `cat /etc/passwd|grep 'home'|grep '/bin'|cut -f1 -d":"`
do
du -sh /home/$user
done

# Потом добавляем скрипт в cron
# crontab -e
#59 23 * * * /home/ivan/task3.sh > /home/ivan/space.info
