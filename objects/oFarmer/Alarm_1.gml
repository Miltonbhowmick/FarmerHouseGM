/// @description Change grid

//instance_destroy(bubble_message);
//bubble_message = noone;

mp_grid_clear_all(global.rmGrid);
global.rmGrid = mp_grid_create(0,0,room_width/16, room_height/16, 16, 16);
mp_grid_add_instances(global.rmGrid, oSoil, true);
mp_grid_add_instances(global.rmGrid, oBlock, true);
	