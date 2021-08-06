// start:

var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);
var _x = camera_get_view_x(view_camera[0]);
var _y = camera_get_view_y(view_camera[0]);

if (mouse_check_button_pressed(mb_left)) {
    drag_x = mouse_x;
    drag_y = mouse_y;
}
// update:
if (mouse_check_button(mb_left)) {
    // actual dragging logic:
    _x = drag_x - (mouse_x - _x);
    _y = drag_y - (mouse_y - _y);
    // make sure view doesn't go outside the room:
    _x = max(0, min(_x, room_width - _w));
    _y = max(0, min(_y, room_height - _h));
	
	camera_set_view_pos(view_camera[0],_x,_y);
}