/// @description 
var _width = 100;
var _height = 25;

var pos_x = room_width/2-32;
var pos_y = room_height/2-64;

create_button(pos_x,pos_y, _width, _height, "Start Menu", on_click);
create_button(pos_x,pos_y+op_space, _width, _height, "Settings", on_click);
create_button(pos_x,pos_y+op_space*2, _width, _height, "Exit", on_click);
