/// @description Draw grid

if(timeToDraw){
	draw_set_alpha(.2);
	mp_grid_draw(rm_road_path);
	draw_set_alpha(10);
}