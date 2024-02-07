#!/bin/bash

# ---------------------------------------- GLOBAL CONFIG
BAG='bags'
TOPIC='/velodyne_points'
#PURPOSE='accuracy_measure'
# ---------------------------------------- END GLOBAL CONFIG

#Folder with pcd files
cd /home/data_collection/Desktop/pcds/bags/
## Convert all pcd files to ply files
for filename in *.pcd; do
	pcl_converter -f ascii "$filename" "$filename"

      pcl_pcd2ply -format 0 "$filename" /home/data_collection/Desktop/plys/"${filename%.pcd}".ply #specify the right path 

done
