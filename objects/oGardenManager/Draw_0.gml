/// @description Draw grid

//if(timeToDraw){
	//draw_set_alpha(.2);
	//mp_grid_draw(rm_road_path);
	//draw_set_alpha(10);
//}
var pos_x = 12;
var pos_y = 12;

	draw_sprite(sFarmer, 0, pos_x, pos_y);
	draw_text(pos_x+10,pos_y-10, string(countGardenTree));

	draw_sprite(sFarmerFlower, 0, pos_x, pos_y+20);
	draw_text(pos_x+10,pos_y+10,string(countFlower));

	draw_sprite(sFarmerStone, 0, pos_x, pos_y+20*2);
	draw_text(pos_x+10,pos_y+30, string(countStone));
