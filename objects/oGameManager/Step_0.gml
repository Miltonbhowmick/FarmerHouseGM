if(soil_create && mouse_check_button_pressed(mb_left)){
	instance_create_layer(spx,spy,"Soils", oSoil);
	if(spy+sp_grid>=camera_get_view_height(view_camera[0])){
		spx+=sp_grid*2;
		spy = 240;
	}
	else{
		spy+=sp_grid;
	}
	soil_create = false;
}