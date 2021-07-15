//if(ck)
inst_large_tree = instance_nearest(x,y,oLargeTree);

if(instance_exists(inst_large_tree)){
	if(ck) 	inst_large_tree.OccupiedFarmer = id;
	
	if(inst_large_tree.OccupiedFarmer == id){		
		ck=false;
		x = inst_large_tree.x;
		y = inst_large_tree.y;
		if(alarm[0]<0){
			alarm[0] = room_speed * 5;		
		}
	}
	
}
else{
}
