/// @description 
var _width = 100;
var _height = 25;

var pos_x = room_width/2-32;
var pos_y = room_height/2-32;

if(file_exists("savedgame.save")){
	create_button(pos_x,pos_y, _width, _height,noone, "Resume", on_click);
}

create_button(pos_x,pos_y+op_space, _width, _height,noone, "New Game", on_click);
create_button(pos_x,pos_y+op_space*2, _width, _height,noone, "Settings", on_click);
create_button(pos_x,pos_y+op_space*3, _width, _height, noone, "Exit", on_click);
