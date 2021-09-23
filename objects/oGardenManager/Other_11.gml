/// @description Roads, Duengon
myPath = path_add();
while(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0)==0){
	with(oGardenGate){
		instance_destroy();
	}
	random_dungeon_gate(inst_GardenManager);
}

if(gate_cell[$ seed_value]==undefined){
	gate_cell[$ seed_value] = [sx,sy,dx,dy];
	SaveString(json_stringify(gate_cell),"gate.json");
	
	/*
	// save to ini file
	ini_open("map.ini");
	var t_string;
	t_string = ds_map_write(gate_cell);
	ini_write_string("Saved", "0", t_string);
	ini_close(); 
	*/
}
path_num = path_get_number(myPath) - 1;
var a;
for (a = 0; a < path_num; ++a)
{
	px = floor(path_get_point_x(myPath, a)/cell_size) * cell_size;
	py = floor(path_get_point_y(myPath, a)/cell_size) * cell_size;
	instance_create_layer(px, py,"Roads", oRoad);
}
