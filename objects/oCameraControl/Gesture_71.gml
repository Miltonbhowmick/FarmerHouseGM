/// @description Zoom In

var _scale = event_data[? "relativescale"];
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);
var _x = camera_get_view_x(view_camera[0]);
var _y = camera_get_view_y(view_camera[0]);

if(_w>320){
	
	var mx = midpoint_x, my=midpoint_y;
	var cx = (mx - _x) / _scale;
	var cy = (my - _y) / _scale;
	
	_w *= _scale;
	_h *= _scale;
	_x = mx - (cx *_scale);
	_y = my - (cy *_scale);
	camera_set_view_pos(view_camera[0], _x, _y);
	camera_set_view_size(view_camera[0], _w, _h);
}
// Debug
touch_x[0] = event_data[? "posX1"]
touch_y[0] = event_data[? "posY1"]
touch_x[1] = event_data[? "posX2"]
touch_y[1] = event_data[? "posY2"]