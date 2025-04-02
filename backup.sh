#!/bin/bash

rsync -avh --delete --checksum  /home/klyushina /tmp/backup 
if [ $? -eq 0 ]; then
        echo "$(date) - Резервное копирование выполнено" >> /var/log/backup.log
else
        echo "$(date) - Резервное копирование не выполнено" >> /var/log/backup.log
fi
