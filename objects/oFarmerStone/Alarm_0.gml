/// @description 

if(room==rGarden){
	
	//show_message("done");
	// destrying elemets i.e trees or flowers or stones
	if(instance_exists(inst_large_tree)){
		mp_grid_clear_cell(global.rmGarden, floor(inst_large_tree.x/16), floor(inst_large_tree.y/16));
		instance_destroy(inst_large_tree);
		_start_gx = -1;
		_start_gy = -1;
	}	
}