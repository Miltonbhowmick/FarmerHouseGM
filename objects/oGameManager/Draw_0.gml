/// @description object state


var pos_x = camera_get_view_x(view_camera[0])+12;
var pos_y = camera_get_view_y(view_camera[0])+12;


draw_sprite(sCollectTree, 0, pos_x, pos_y);
draw_text(pos_x+10,pos_y-10,string(CollectTrees));

draw_sprite(sFarmer, 0, pos_x, pos_y+20);
draw_text(pos_x+10,pos_y+10,string(Farmer));
