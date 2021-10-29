/// @description 
if(GameManager.draw_permission==true || GameManager.BackFromCave==true){
with (GameManager.camera_control) {
				view_enabled = true;
				view_visible[0] = true;
			}
			instance_destroy();
			instance_create_layer(0,0,"GUI",oManager);
}


if(GameManager.draw_permission==false && GameManager.BackFromCave==false){
if(mouse_check_button_pressed(mb_left)){
		var xx = device_mouse_x_to_gui(0);
		var yy = device_mouse_y_to_gui(0);
		if(xx>=continue_x && xx<=continue_x+64 && yy>=continue_y && yy<=continue_y+32){
			with (GameManager.camera_control) {
				view_enabled = true;
				view_visible[0] = true;
			}
			instance_destroy();
			instance_create_layer(0,0,"GUI",oManager);
		}
} 
}