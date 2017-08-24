#!/bin/bash

camera=$(date +%Y-%m-%d)

crontab -l > $camera".text"

#echo new cron into cron file

        echo "@reboot Date" >> $camera".text"
# m h  dom mon dow   command
#*/5 * * * * sh /home/dynaptuser/frontcam.sh
#26 16 12 10 3  sh /home/fbstream.sh
@midnight sh /home/Aggregator/shut.sh
*/1 * * * * mono /home/Aggregator/AggregatorPingUtility.exe
#*/5 * * * * python /home/project/uploadVideoToCloud.py
*/5 * * * *  python /home/project/compareMACtoIp.py
@reboot sh /home/Aggregator/speedTest.sh
@reboot sh /home/project/UploadRunning.sh
@reboot python /home/project/UploadMotionData.py
@reboot sh /home/Aggregator/readJson.sh
*/5 * * * * sh /home/project/removeJson.sh
@reboot sh /home/project/CompareTimeRunning.sh
@reboot sh /home/Aggregator/checkCpu.sh
@reboot sh /home/Aggregator/Bandwidth.sh
@reboot sh /home/Aggregator/status.sh
