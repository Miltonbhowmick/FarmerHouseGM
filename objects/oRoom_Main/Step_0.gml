/// @description 

if(mouse_check_button_pressed(mb_left)){
		var xx = device_mouse_x_to_gui(0);
		var yy = device_mouse_y_to_gui(0);
		if(xx>=continue_x && xx<=continue_x+128 && yy>=continue_y && yy<=continue_y+128){
			with (GameManager.camera_control) {
				view_enabled = true;
				view_visible[0] = true;
			}
			instance_destroy();
		}
} 