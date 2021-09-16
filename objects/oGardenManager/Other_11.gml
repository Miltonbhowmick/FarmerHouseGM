/// @description Roads, Duengon

myPath = path_add();
if(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0)){
	path_start(myPath,2,path_action_stop,false);
}
path_num = path_get_number(myPath) - 1;
var a;
for (a = 0; a < path_num; ++a)
{
	px = path_get_point_x(myPath, a);
	py = path_get_point_y(myPath, a);
	instance_create_layer(px, py,"Roads", oRoad);
}
