/// @description Roads, Duengon

myPath = path_add();
mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0);
show_message(mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0));
path_num = path_get_number(myPath) - 1;
for (a = 0; a < path_num; ++a)
{
	px = path_get_point_x(myPath, a);
	py = path_get_point_y(myPath, a);
	instance_create_layer(px, py,"Stones", oLargeStone);
}
