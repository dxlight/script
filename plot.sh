#!/bin/bash
nounce=20000000000
till=20250000000
step=800000
ram=400000
for ((z=$nounce;z<=$till;z+$step))
do
   usep=$(df -hl | awk '/^\/dev\/xvda1/ { sum+=$5 } END { print sum }')
   while [ $usep -ge 70 ]
   do
      echo RUNNING LOW ON HDD - Waiting for gdrive upload
      for ((i=60;i>=0;i--))
      do
         echo $i - RUNNING LOW ON HDD - Waiting for gdrive upload
         sleep 1
      done
   usep=$(df -hl | awk '/^\/dev\/xvda1/ { sum+=$5 } END { print sum }')
   done
/home/ubuntu/script/mdcct/plotavx2 -x 2 -k 12446025604899037236 -d /home/plots -s $nounce -n $step -m $ram
mv /home/plots/* /home/plots/complete
nounce=$(( $nounce + $step))
done

