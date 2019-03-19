#!/bin/bash

va=`sed '23!d' /usr/local/nginx/conf/nginx.conf`
        echo $va 
t=`echo $va | awk '{print $1;}'`
echo $t
        if [ "$t" = "#push" ]
        then
                echo "matched"
        else
                sed 's/push/#push/' /usr/local/nginx/conf/nginx.conf > test.txt
                mv test.txt /usr/local/nginx/conf/nginx.conf
                sleep 1
                sudo service nginx restart
        fi
