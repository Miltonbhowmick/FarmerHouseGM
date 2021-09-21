// @func get_hover()
function get_hover(){
	var _mouseX = device_mouse_x_to_gui(0);								  // get x position of mouse over the screen coordinates
	var _mouseY = device_mouse_y_to_gui(0);								  // get y position of mouse over the screen coordinates
	return point_in_rectangle(_mouseX, _mouseY, x, y, x+width, y+height); // calculate rectangule to check mouse hover the button or not
}