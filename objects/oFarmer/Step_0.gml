if(ck) 
	inst_large_tree = instance_nearest(x,y,oLargeTree);
if(instance_exists(inst_large_tree)){

	if(inst_large_tree.OccupiedFarmer==noone || inst_large_tree.OccupiedFarmer == id){
		ck=false;
		inst_large_tree.OccupiedFarmer = id;
		if(x==inst_large_tree.x && y==inst_large_tree.y){
			if(alarm[0]<0){
				alarm[0] = room_speed  * 5;
			}
		}
		else{
			if(x!=inst_large_tree.x){
				x+=.5*sign(inst_large_tree.x-x);
			}
			if(y!=inst_large_tree.y){
				y+=.5*sign(inst_large_tree.y-y);
			}
		}
	}
	else{
		inst_large_tree = instance_nth_nearest(x,y,oLargeTree,2);
	}
}