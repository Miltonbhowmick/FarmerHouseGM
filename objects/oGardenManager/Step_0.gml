if(seed_value>0){
	if(gate_cell[$ seed_value]==undefined){
		// source gate
		sx = room_width-cell_size;
		sy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		instance_create_layer(sx,sy,"Gates",oGardenGate);
		// destination gate
		dx = 0;
		dy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		instance_create_layer(dx,dy,"Gates",oGardenGate);
	}
	else{
		sx = array_get(gate_cell[$ seed_value],0);
		sy = array_get(gate_cell[$ seed_value],1);
		instance_create_layer(sx,sy,"Gates",oGardenGate);
		dx = array_get(gate_cell[$ seed_value],2);
		dy = array_get(gate_cell[$ seed_value],3);
		instance_create_layer(dx,dy,"Gates",oGardenGate);

	}

	free_cell[# floor(sx/cell_size), floor(sy/cell_size)] = 1;
	free_cell[# floor(dx/cell_size), floor(dy/cell_size)] = 1;

	// Trees, Flowers, rocks creation
	event_user(0);

	// Roads creation
	mp_grid_add_instances(global.rm_road_path,oFlower,true);
	mp_grid_add_instances(global.rm_road_path,oDungeonTree,true);
	mp_grid_add_instances(global.rm_road_path,oSmallStone,true);

	event_user(1);

	seed_value=-1;
}

if(GameManager.stop_work==false){
	touched = false;
}
