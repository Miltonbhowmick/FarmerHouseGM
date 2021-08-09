/// @description Insert description here
// You can write your code in this editor
var _width = 35;
var _height = 35;

var pos_x = 680-50;
var pos_y = 340/2-50;

create_button(pos_x,pos_y, _width, _height, "4", on_click);
create_button(pos_x,pos_y+50, _width, _height, "3", on_click);
create_button(pos_x,pos_y+50*2, _width, _height, "2", on_click);
create_button(pos_x,pos_y+50*3, _width, _height, "1", on_click);
