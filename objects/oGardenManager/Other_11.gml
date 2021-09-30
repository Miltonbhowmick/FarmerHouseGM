/// @description Roads, Duengon
myPath = path_add();
while(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0)==0){
	with(oGardenGate){
		instance_destroy();
	}
	random_dungeon_gate(inst_GardenManager);
}

if(gate_cell[$ seed_value]==undefined){	
	// save source and destination gate position along with seed value
	gate_cell[$ seed_value] = [sx,sy,dx,dy];
	SaveString(json_stringify(gate_cell),"gate.save");

}
path_num = path_get_number(myPath) - 1;
var a, cutter=3;
for (a = 0; a < path_num; ++a)
{
	px = floor(path_get_point_x(myPath, a)/cell_size) * cell_size;
	py = floor(path_get_point_y(myPath, a)/cell_size) * cell_size;
	
	if(cutter==3){
		instance_create_layer(px,py,"Farmers",oFarmer);
		cutter--;
	}
	else if(cutter==2){
		instance_create_layer(px,py,"Farmers",oFarmerFlower);
		cutter--;
	}
	if(cutter==1){
		instance_create_layer(px,py,"Farmers",oFarmerStone);
		cutter--;
	}
	
	instance_create_layer(px, py,"Roads", oRoad);
}