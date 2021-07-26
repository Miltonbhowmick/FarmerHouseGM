if(soil_create && mouse_check_button_pressed(mb_left)){
	if(instance_position(spx,spy,oBlock)){
		var objBlock = instance_position(spx,spy,oBlock);
		with objBlock {
			instance_destroy();
		}
	}
	if(instance_position(spx-sp_grid,spy,oBlock)){
		var objBlock = instance_position(spx-sp_grid,spy,oBlock);
		with objBlock {
			instance_destroy();
		}
	}
	
	instance_create_layer(spx,spy,"Soils", oSoil);
	instance_create_layer(spx-sp_grid,spy,"Roads", oRoad);
	if(spy+sp_grid>=camera_get_view_height(view_camera[0])-32){
		spx+=sp_grid*2;
		spy = 192;
	}
	else{
		spy+=sp_grid;
	}
	soil_create = false;
}