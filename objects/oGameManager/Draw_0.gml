/// @description object state


var pos_x = camera_get_view_x(view_camera[0]);
var pos_y = camera_get_view_y(view_camera[0]);

draw_set_font(fMenu);
draw_text(pos_x,pos_y,"Collect Tree: " + string(CollectTrees));

draw_set_font(fMenu);
draw_text(pos_x,pos_y+20,"My Farmer: " + string(Farmer));
