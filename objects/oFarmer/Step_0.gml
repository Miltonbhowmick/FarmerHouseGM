if(ck) 
	inst_large_tree = instance_nearest(x,y,oLargeTree);
if(instance_exists(inst_large_tree)){

	if(inst_large_tree.OccupiedFarmer==noone || inst_large_tree.OccupiedFarmer == id){
		ck=false;
		inst_large_tree.OccupiedFarmer = id;
		if(x==inst_large_tree.x-1 && y==inst_large_tree.y){
			if(alarm[0]<0){
				alarm[0] = room_speed  * 5;
			}
		}
		else{
			myPath = path_add();
			if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x-1, inst_large_tree.y, true)){
				path_start(myPath, 2, path_action_stop, true);
			}
			
			/*
			if(x!=inst_large_tree.x){
				x+=.5*sign(inst_large_tree.x-x);
			}
			if(y!=inst_large_tree.y){
				y+=.5*sign(inst_large_tree.y-y);
			}
			*/
		}
	}
}