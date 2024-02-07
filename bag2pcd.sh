BAG='bags' #folder with bags
TOPIC='/velodyne_points'
# ---------------------------------------- END GLOBAL CONFIG

## Convert data to pcd
rosrun pcl_ros bag_to_pcd /home/data_collection/Desktop/new_points.bag "$TOPIC" /home/data_collection/Desktop/pcds/"$BAG"



