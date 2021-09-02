/// @description Draw grid

if(timeToDraw){
	draw_set_alpha(.2)
	mp_grid_draw(rmGrid);
	draw_set_alpha(10);
}