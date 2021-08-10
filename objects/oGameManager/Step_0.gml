if(go_go && mouse_check_button_pressed(mb_left)){
	
	
	go_go = false;
	
	spx = floor(mouse_x/32)*32;
	spy = floor(mouse_y/32)*32;
	
	if(position_meeting(spx+32,spy,oRoad)){
		custom_destroy_instance(spx,spy,oBlock);
		custom_destroy_instance(spx-sp_grid,spy,oBlock);
		instance_create_layer(spx,spy,"Soils", oSoil);
		instance_create_layer(spx-sp_grid,spy,"Roads", oRoad);
		if(spy+sp_grid>=room_height-32){
			custom_destroy_instance(spx,spy+sp_grid,oBlock);
			instance_create_layer(spx,spy+sp_grid,"Roads", oH_Road);

			custom_destroy_instance(spx-sp_grid,spy+sp_grid,oBlock);	
			instance_create_layer(spx-sp_grid,spy+sp_grid,"Roads", oH_Road);
		
			spx+=sp_grid*2;
			spy = 192;
		}
		else{
			spy+=sp_grid;
		}
	}
	else if(position_meeting(spx,spy+32, oRoad)){
		show_debug_message("upore");
	}
	else if(position_meeting(spx,spy-32, oRoad)){
		show_debug_message("niche");
	}
	else{
		show_debug_message("not possible");
	}
	
	// initialize mp grid
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
	mp_grid_add_instances(global.rmGrid, oSoil, true);
	mp_grid_add_instances(global.rmGrid, oBlock, true);
	mp_grid_add_instances(global.rmGrid, oObstacle, true);

}

if(soil_create){
	go_go = true;
	

	soil_create = false;
}