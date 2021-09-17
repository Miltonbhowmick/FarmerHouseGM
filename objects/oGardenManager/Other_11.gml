/// @description Roads, Duengon

myPath = path_add();
if(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0)==0){
	
}

path_num = path_get_number(myPath) - 1;
var a;
for (a = 0; a < path_num; ++a)
{
	px = floor(path_get_point_x(myPath, a)/cell_size) * cell_size;
	py = floor(path_get_point_y(myPath, a)/cell_size) * cell_size;
	instance_create_layer(px, py,"Roads", oRoad);
}
