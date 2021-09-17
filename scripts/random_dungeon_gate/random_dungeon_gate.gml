// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_dungeon_gate(garden_manager){
	// source gate
	var clz = garden_manager.cell_size;
	garden_manager.sx = room_width-clz;
	garden_manager.sy = (floor((irandom_range(0,room_height)/clz)) * clz);
	instance_create_layer(garden_manager.sx,garden_manager.sy,"Gates",oGardenGate);
	// destination gate
	garden_manager.dx = 0;
	garden_manager.dy = (floor((irandom_range(0,room_height)/clz)) * clz);
	instance_create_layer(garden_manager.dx,garden_manager.dy,"Gates",oGardenGate);
}