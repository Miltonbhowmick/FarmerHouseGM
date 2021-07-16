if(ck)
	inst_large_tree = instance_nearest(x,y,oLargeTree);

if(instance_exists(inst_large_tree)){
	if(ck){
		if(inst_large_tree.OccupiedFarmer == noone) 
			inst_large_tree.OccupiedFarmer = id;
	}
	
	if(inst_large_tree.OccupiedFarmer == id){
		ck=false;
		x = inst_large_tree.x;
		y = inst_large_tree.y;
		if(alarm[0]<0){
			alarm[0] = room_speed * 5;
		}
	}
	else{
		//show_message(string(id) + "milse" + string(inst_large_tree.OccupiedFarmer));
	}	
}
else{
	if(instance_exists(instance_nearest(x,y,oSmallTree))==0 && instance_exists(instance_nearest(x,y,oMediumTree))==0 && instance_number(oLargeTree)<=1){
		instance_destroy();
		show_message("nai");
		if(GameManager.Farmer<2) GameManager.Farmer++;
	}
}
