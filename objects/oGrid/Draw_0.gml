/// @description Draw grid

if(room==rMain){
	if(timeToDraw){
		draw_set_alpha(.2);
		mp_grid_draw(rmGrid);
		draw_set_alpha(10);
	}

	if(transport_timeToDraw){
		draw_set_alpha(.2);
		mp_grid_draw(rmGrid_transport);
		draw_set_alpha(10);
	}
}

if(room==rGarden){
	if(garden_timeToDraw){
		draw_set_alpha(.5);
		mp_grid_draw(rmGarden);
		draw_set_alpha(10);
	}
}