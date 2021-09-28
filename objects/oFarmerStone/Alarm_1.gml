/// @description Change grid

if(room==rMain){
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
	mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
	mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
	mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);
}
else if(room==rCave){
}