// @func random_dungeon_gate(garden_manager_object)
// To produce vertically positions attach to the wall where x is fixed but y is changed for both gates
function random_dungeon_gate(garden_manager){
	// source gate
	var clz = garden_manager.cell_size; // cell size of the used grid
	garden_manager.sx = room_width-clz; // x position of source gate 
	garden_manager.sy = floor((irandom_range(0,room_height)/clz)) * clz; // y position of source gate 
	instance_create_layer(garden_manager.sx,garden_manager.sy,"Gates",oGardenGate); // creating source gate on sx,sy position
	// destination gate
	garden_manager.dx = 0; // x position of destination gate
	garden_manager.dy = (floor((irandom_range(0,room_height)/clz)) * clz); // y position of destination gate
	instance_create_layer(garden_manager.dx,garden_manager.dy,"Gates",oGardenGate); // creating destination gate on dx,dy position
}