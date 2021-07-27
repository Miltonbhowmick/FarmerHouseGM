/// @description Insert description here
// You can write your code in this editor
var _width = 20;
var _height = 20;

var left = camera_get_view_width(view_camera[0])-32;
create_button(left,200, _width, _height, "4", on_click);
create_button(left,200+50, _width, _height, "3", on_click);
create_button(left,200+50*2, _width, _height, "2", on_click);
create_button(left,200+50*3, _width, _height, "1", on_click);
