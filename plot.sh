#!/bin/bash
nounce=33000000000
till=34000000000
step=800000
ram=200000
for ((z=$nounce;z<=$till;z+$step))
do
   usep=$(df -hl | awk '/^\/dev\/md3/ { sum+=$5 } END { print sum }')
   while [ $usep -ge 70 ]
   do
      echo RUNNING LOW ON HDD - Waiting for gdrive upload
      for ((i=60;i>=0;i--))
      do
         echo $i - RUNNING LOW ON HDD - Waiting for gdrive upload
         sleep 1
      done
   usep=$(df -hl | awk '/^\/dev\/md3/ { sum+=$5 } END { print sum }')
   done
/root/script/mdcct/plotavx2 -x 1 -k 12446025604899037236 -d /home/plotgen -s $nounce -n $step -m $ram
r=$(( $RANDOM % 2 ))
if [ "$r" == "0" ]
then
   mv /home/plotgen/* /home/plots/complete
else
   mv /home/plotgen/* /home/plots/complete2
fi
nounce=$(( $nounce + $step))
done
