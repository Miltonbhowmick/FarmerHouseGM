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
path_num = path_get_number(myPath) ;
var a;
for (a = 0; a < path_num; ++a)
{
	px = floor(path_get_point_x(myPath, a)/cell_size) * cell_size;
	py = floor(path_get_point_y(myPath, a)/cell_size) * cell_size;
	instance_create_layer(px, py,"Roads", oRoad);
}

// creating farmers 
instance_create_layer(_fx,_fy,"Farmers",oFarmer);
instance_create_layer(oFarmer.x,oFarmer.y+32,"Farmers",oFarmerFlower);
instance_create_layer(oFarmerFlower.x,oFarmerFlower.y+32,"Farmers",oFarmerStone);