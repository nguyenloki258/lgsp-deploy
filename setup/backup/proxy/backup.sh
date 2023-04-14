#!/bin/bash
cd /srv
sudo chmod 777 ./backups/ -R
echo "🎰 Check to delete older zip"
cd ./backups/
totalMatch=`find -L ./ -name "*infrastructure.zip"| wc -l`
echo "totalMatch ${totalMatch}"
itemToDelete=0
if [[ $totalMatch -gt 5 ]]
then
  itemToDelete=$(($totalMatch-5))
fi
echo "itemToDelete $itemToDelete"
matchDelete=`find -L ./ -name "*infrastructure.zip" | sort | head -n $itemToDelete`  
echo "matchDelete ${matchDelete}"
for deleteItem in ${matchDelete[@]}; do
  echo "🗑 Delete ${deleteItem}"
  rm ${deleteItem} -rf  
done
cd ../
echo "Step1: Create file name infrastructure"

FILE_NAME=$(date +%Y-%m-%d_%H:%M:%S.infrastructure.zip)
echo "✅ Created file name ${FILE_NAME}"
echo "Step2: Zip backup data"
zip -r -9 ./backups/${FILE_NAME} ./infrastructure # -9 highest zip
echo "✅ Done zip to ${MOUNT_SRC}/backups/${FILE_NAME}" 
echo "Step2: Copy backup to driver"
 rclone copyto /srv/backups/${FILE_NAME} --delete-before ${TARGET_CLOUD}/${FILE_NAME}  -P  --skip-links
 
 
