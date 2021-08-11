if(go_go && mouse_check_button_pressed(mb_left)){
	
	
	go_go = false;
	
	spx = floor(mouse_x/32)*32;
	spy = floor(mouse_y/32)*32;
	
	if(spy<down_y && spy>up_y){
		// left side
		if(down_x - sp_grid*up_down_soil == spx) // as now down_x==up_x
		{
			// new soil
			custom_destroy_instance(spx,spy,oBlock);
			instance_create_layer(spx,spy,"Soils",oSoil);
			total_create++;
			// new road
			custom_destroy_instance(spx-sp_grid,spy,oBlock);
			instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
		}
	}
	else{
		if(FarmerPosition.y <spy){
			if((down_x - ((sp_grid*up_down_soil)-32))<=spx && spx<=down_x){		
				// down
				if(spy==down_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx,spy+sp_grid,oBlock);
					instance_create_layer(spx,spy+sp_grid,"Roads",oH_Road);
					if(spx+sp_grid == FarmerPosition.x-sp_grid){
						// first road front of farmers
						custom_destroy_instance(spx+sp_grid,spy+sp_grid,oBlock);
						instance_create_layer(spx+sp_grid,spy+sp_grid,"Roads",oH_Road);
						custom_destroy_instance(spx+sp_grid,spy,oBlock);
						instance_create_layer(spx+sp_grid,spy,"Roads",oH_Road);	
					}
				}
			}
			else{
				// down left corner
				if(down_x - sp_grid*up_down_soil==spx && spy==down_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx-sp_grid,spy,oBlock);
					instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
					custom_destroy_instance(spx,spy+sp_grid,oBlock);
					instance_create_layer(spx,spy+sp_grid,"Roads",oH_Road);
					custom_destroy_instance(spx-sp_grid,spy+sp_grid,oBlock);
					instance_create_layer(spx-sp_grid,spy+sp_grid,"Roads",oH_Road);
				}
			}
		}
		else{
			if((up_x - ((sp_grid*up_down_soil)-32))<=spx && spx<=up_x){		
				// up
				if(spy==up_y){
					// new soil	
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx,spy-sp_grid,oBlock);
					instance_create_layer(spx,spy-sp_grid,"Roads",oH_Road);
					if(spx+sp_grid == FarmerPosition.x-sp_grid){
						// first road front of farmers					
						custom_destroy_instance(spx+sp_grid,spy-sp_grid,oBlock);
						instance_create_layer(spx+sp_grid,spy-sp_grid,"Roads",oH_Road);
						custom_destroy_instance(spx+sp_grid,spy,oBlock);
						instance_create_layer(spx+sp_grid,spy,"Roads",oH_Road);	
					}
				}
			}
			else{
				// up left corner
				if(up_x - sp_grid*up_down_soil==spx && spy==up_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx-sp_grid,spy,oBlock);
					instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
					custom_destroy_instance(spx,spy-sp_grid,oBlock);
					instance_create_layer(spx,spy-sp_grid,"Roads",oH_Road);
					custom_destroy_instance(spx-sp_grid,spy-sp_grid,oBlock);
					instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads",oH_Road);
				}
			}
		}
	}
	/*
	if(position_meeting(spx+32,spy,oH_Road)){
		custom_destroy_instance(spx,spy,oBlock);
		custom_destroy_instance(spx-sp_grid,spy,oBlock);
		
		instance_create_layer(spx,spy,"Soils", oSoil);
		instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);

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
	else if(position_meeting(spx,spy+32, oH_Road) && position_meeting(spx+32,spy+32, oSoil)==false){
		custom_destroy_instance(spx,spy,oBlock);
		custom_destroy_instance(spx,spy-sp_grid,oBlock);

		instance_create_layer(spx,spy,"Soils", oSoil);
		instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);

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
	else if(position_meeting(spx,spy-32, oH_Road) && position_meeting(spx-32,spy-32, oSoil)==false ){
		custom_destroy_instance(spx,spy,oBlock);
		custom_destroy_instance(spx,spy+sp_grid,oBlock);

		instance_create_layer(spx,spy,"Soils", oSoil);
		instance_create_layer(spx,spy+sp_grid,"Roads", oH_Road);

		
	}
	else{
		if(position_meeting(spx+32,spy+32, oH_Road)){
			if((position_meeting(spx+32,spy, oSoil) && position_meeting(spx,spy+32, oSoil)) || (position_meeting(spx+32,spy, all)==false && position_meeting(spx,spy+32, all)==false)){
				show_debug_message("upore conay");
			}
		}
		
	}
	*/
	
	// initialize mp grid
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
	mp_grid_add_instances(global.rmGrid, oSoil, true);
	mp_grid_add_instances(global.rmGrid, oBlock, true);
	mp_grid_add_instances(global.rmGrid, oObstacle, true);
	
	if(total_create == prev_total + 8){
		soil_layer++;
		up_y -= (sp_grid*2);
		down_y += (sp_grid*2);
		
		prev_total = total_create;
		total_create = 0;
		up_down_soil+=2;
		side_soil += 2;
	}

}

if(soil_create){
	go_go = true;
	

	soil_create = false;
}