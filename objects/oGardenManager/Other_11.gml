/// @description Roads, Duengon
myPath = path_add();
while(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0)==0){
	with(oGardenGate){
		instance_destroy();
	}
	random_dungeon_gate(inst_GardenManager);
}

// creating farmers 
instance_create_layer(sx,sy-10,"Farmers",oFarmer);
instance_create_layer(sx,sy,"Farmers",oFarmerFlower);
instance_create_layer(sx,sy+10,"Farmers",oFarmerStone);

if(gate_cell[$ seed_value]==undefined){	
	// save source and destination gate position along with seed value
	gate_cell[$ seed_value] = [sx,sy,dx,dy];
	SaveString(json_stringify(gate_cell),"gate.save");

}
path_num = path_get_number(myPath) - 1;
var a;
for (a = 0; a < path_num; ++a)
{
	px = floor(path_get_point_x(myPath, a)/cell_size) * cell_size;
	py = floor(path_get_point_y(myPath, a)/cell_size) * cell_size;
	instance_create_layer(px, py,"Roads", oRoad);
}