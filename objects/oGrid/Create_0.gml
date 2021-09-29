/// @description Create grid

if(room==rMain){
	// For farmer
	globalvar rmGrid;
	global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
	mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
	mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
	mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);
	mp_grid_add_instances(global.rmGrid, oFarmer, true);

	timeToDraw = false;

	// For transport
	globalvar rmGrid_transport;
	global.rmGrid_transport = mp_grid_create(0,0,room_width/16,room_height/16, 16,16);
	mp_grid_add_instances(global.rmGrid_transport, oBlock_16x16, true);
	transport_timeToDraw = false;
}
else if(room==rGarden){
	// For farmers
	globalvar rmGarden;
	global.rmGarden = mp_grid_create(0,0,room_width/16,room_height/16, 16,16);

	garden_timeToDraw = false;
}