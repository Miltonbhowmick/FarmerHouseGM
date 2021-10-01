/// @description 

if(room==rGarden){
	
//	show_message("done");
	// destrying elemets i.e trees or flowers or stones
	if(instance_exists(inst_large_tree)){
		// sound on each cut of tree
		audio_play_sound(snd_Destroy,10,false);
		mp_grid_clear_cell(global.rmGarden, floor(inst_large_tree.x/16), floor(inst_large_tree.y/16));
		instance_destroy(inst_large_tree);
		_start_gx = -1;
		_start_gy = -1;
	}
}