#!/bin/bash
if [[ $(ss -tulpn | grep LISTEN | grep :80) ]] && [[ -f /var/www/html/index.html ]]; then
#echo "0"
exit 0
else
#echo "1"
exit 1
fi



