// mp grid path speed 
path_speed = .5;

// Two farmer collision -> old distance_to_object 25 , co-circle 22
if(distance_to_object(oFarmerPosition)>=22 && collision_circle(x,y,20, oFarmer, false,true)){
	
	// near farmer on collision moment
	near_farmer = instance_nth_nearest(x,y,oFarmer,2);
	
	// changing grid size 2x2
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width/2, room_height/2, 2, 2);
	mp_grid_add_instances(global.rmGrid, oSoil, true);
	mp_grid_add_instances(global.rmGrid, oBlock, true);
	mp_grid_add_instances(global.rmGrid, near_farmer , true);

	// bubble message position
	var mid_x=0;
	var mid_y=0;
	with oFarmer{
		mid_x+=x;
		mid_y+=y;
	}
	mid_x = mid_x/2;
	mid_y = mid_y/2;
	
	// "Excuse me" message
	bubble_message = instance_create_layer(x-15,y-15,"Bubbles",oBubbleMessage);
	with bubble_message {
		alarm[0] = 1;
	}
	alarm[1] = room_speed * .4;
}

// Farmer is running to large tree
if(instance_number(oLargeTree)<1){
	myPath = path_add();
	if(mp_grid_path(rmGrid, myPath, x, y ,inst_FarmerPosition.x, inst_FarmerPosition.y, true)){
		path_start(myPath, 2, path_action_stop, true);
	}
	ck=true;
}
else
{
	
	//OLD PATH MOVING
	
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
			// 35 is grid_size + 3
			if((x==inst_large_tree.x+35 && y==inst_large_tree.y+20) || (x==inst_large_tree.x+20 && y==inst_large_tree.y) ||(x==inst_large_tree.x-4 && y==inst_large_tree.y+20) ){
				if(alarm[0]<0){
					alarm[0] = room_speed  * 5;
				}
			}
			else{
				myPath = path_add();
				if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x+35, inst_large_tree.y+20, true)){
					path_start(myPath, 2, path_action_stop, true);
				}
				else if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x+20, inst_large_tree.y, true)){
					path_start(myPath, 2, path_action_stop, true);
				}
				else if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x-4, inst_large_tree.y+20, true)){
					path_start(myPath, 2, path_action_stop, true);
				}
			}
		}
	}
	
}