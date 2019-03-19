#!/bin/bash
comment=`cat play.txt`
echo $comment
if [ $comment = 1 ]
then
	va=`sed '23!d' /usr/local/nginx/conf/nginx.conf`
	echo $va
	if [ "$va" = "push rtmp://streaming.kazacam.com/live/;" ]
	then 
		echo "matched"
	else
		sed 's/#push/push/' /usr/local/nginx/conf/nginx.conf > test.txt
        	mv test.txt /usr/local/nginx/conf/nginx.conf
		sudo service nginx restart
	fi
fi

