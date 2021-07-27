if(soil_create && mouse_check_button_pressed(mb_left)){
	
	custom_destroy_instance(spx,spy,oBlock);
	custom_destroy_instance(spx-sp_grid,spy,oBlock);
	
	instance_create_layer(spx,spy,"Soils", oSoil);
	instance_create_layer(spx-sp_grid,spy,"Roads", oRoad);
	if(spy+sp_grid>=camera_get_view_height(view_camera[0])-32){
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
	soil_create = false;
}