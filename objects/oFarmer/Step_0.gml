// point_distance(x,y,inst_FarmerPosition.x,inst_FarmerPosition.y)
// farmer_bubble_skip(x,y,inst_FarmerPosition.x, inst_FarmerPosition.y)==true

// NEW 3*

if(instance_number(oObstacle) == 0 && distance_to_object(oFarmerPosition)>=25 && collision_circle(x,y,24, oFarmer, false,true)){
	
	var mid_x=0;
	var mid_y=0;
	with oFarmer{
		//show_message(string(x)+"--"+string(y));
		mid_x+=x;
		mid_y+=y;
	}
	mid_x = mid_x/2;
	mid_y = mid_y/2;
	
	obstacle = instance_create_layer(mid_x-16,mid_y,"Blocks",oObstacle);
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width, room_height, 8, 8);
	mp_grid_add_instances(global.rmGrid, oSoil, true);
	mp_grid_add_instances(global.rmGrid, oBlock, true);
	mp_grid_add_instances(global.rmGrid, oObstacle, true);

	with obstacle {
		alarm[0] = room_speed * 3;
	}
	
}


// NEW 2
/*
if(instance_number(oObstacle)==0 && distance_to_object(oFarmerPosition)>=16 && collision_circle(x,y,16, oFarmer, false,true)){
	show_message("milsee");
	
	var near_farmer =  collision_circle(x,y,16, oFarmer, false,true);
	var mid_x, mid_y;
	show_message(near_farmer);
	with near_farmer {
		var opp_farmer = instance_nearest(x,y,oFarmer);
		mid_x = (x+opp_farmer.x)/2;
		mid_y = (y+opp_farmer.y)/2;
	}
	
	obstacle = instance_create_layer(mid_x-16,mid_y,"Blocks",oObstacle);
	
	
	mp_grid_add_instances(global.rmGrid,oObstacle,true);	
	
	with obstacle {
		alarm[0] = room_speed * 3;
	}
	
}

*/

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