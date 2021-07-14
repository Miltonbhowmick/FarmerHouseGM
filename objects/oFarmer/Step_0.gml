var inst_large_tree = instance_nearest(x,y,oLargeTree);

if(instance_exists(inst_large_tree)){
	x = inst_large_tree.x;
	y = inst_large_tree.y;
	with inst_large_tree {
		if(alarm[0]<0){
			alarm[0] = room_speed * 5;
		}
	}
}
