// point_distance(x,y,inst_FarmerPosition.x,inst_FarmerPosition.y)
// farmer_bubble_skip(x,y,inst_FarmerPosition.x, inst_FarmerPosition.y)==true

if(instance_number(oObstacle)==0 && distance_to_object(oFarmerPosition)>=16 && collision_circle(x,y,10, oFarmer, false,true)){
	show_message("milsee");
	near_farmer =  collision_circle(x,y,10, oFarmer, false,true);
	obstacle = instance_create_layer(near_farmer.x-30,near_farmer.y,"Blocks",oObstacle);
	mp_grid_add_instances(global.rmGrid,oObstacle,true);	
	
	with obstacle {
		alarm[0] = room_speed * 3;
	}
	
}
// NEW
/*
if(instance_number(oObstacle)==0 && distance_to_object(oFarmerPosition)!=0 && distance_to_object(oFarmerPosition)!=22 && distance_to_object(oFarmer)==GameManager.bubble_range){
	// geting same object nearest instance
	
	near_farmer = instance_nth_nearest(x,y,oFarmer,2);
	
	if(y<near_farmer)
	{
		up_obstacle = instance_create_layer(x-30,y+10,"Blocks",oObstacle);
		down_obstacle = instance_create_layer(near_farmer.x-30,near_farmer.y+10,"Blocks",oObstacle);
	}
	else{
		up_obstacle = instance_create_layer(x-30,y-10,"Blocks",oObstacle);
		down_obstacle = instance_create_layer(near_farmer.x-30,near_farmer.y-10,"Blocks",oObstacle);
	}
	
	mp_grid_add_instances(global.rmGrid,oObstacle,true);	
	show_message(string(up_obstacle) + "--" + string(distance_to_object(oFarmerPosition))+"Excuse Me!");

	with up_obstacle {
		alarm[0] = room_speed * 3;
	}
	with down_obstacle {
		alarm[0] = room_speed * 3;
	}	
}
*/

// OLD
/*
if(distance_to_object(oFarmerPosition)!=0 && distance_to_object(oFarmerPosition)!=22 && distance_to_object(oFarmer)==GameManager.bubble_range){	
// create obstacle object
	obstacle = instance_create_layer(near_farmer.x,near_farmer.y,"Blocks",oObstacle);
	mp_grid_add_instances(global.rmGrid, oObstacle, true);
	
	show_message(string(id) + "==" + string(near_farmer.id) + "--" + string(distance_to_object(oFarmerPosition))+"Excuse Me!");	

	with obstacle{
		alarm[0] = room_speed * 5;
	}
}
*/
if(instance_number(oLargeTree)<1){
	myPath = path_add();
	if(mp_grid_path(rmGrid, myPath, x, y ,inst_FarmerPosition.x, inst_FarmerPosition.y, true)){
		path_start(myPath, 2, path_action_stop, true);
	}
	ck=true;
}
else
{
	if(ck){
		inst_large_tree = instance_nearest(x,y,oLargeTree);
		if(instance_exists(inst_large_tree) && inst_large_tree.OccupiedFarmer!=noone && inst_large_tree.OccupiedFarmer!=id){	
			inst_large_tree = instance_nth_nearest(x,y,oLargeTree,2);
		}
	}
	if(instance_exists(inst_large_tree)){

		if(inst_large_tree.OccupiedFarmer==noone || inst_large_tree.OccupiedFarmer == id){
			ck=false;
			inst_large_tree.OccupiedFarmer = id;
			if(x==inst_large_tree.x-4 && y==inst_large_tree.y+20){
				if(alarm[0]<0){
					alarm[0] = room_speed  * 5;
				}
			}
			else{
				myPath = path_add();
				if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x-4, inst_large_tree.y+20, true)){
					path_start(myPath, 2, path_action_stop, true);
				}
			}
		}
	}
}