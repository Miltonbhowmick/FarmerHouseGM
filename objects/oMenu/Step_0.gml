/// @description Actions

// Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

// keyboard controls
if(menu_control){
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items){
			menu_cursor = 0;
		}
	}
	if(keyboard_check_pressed(vk_down)){
		menu_cursor++;
		if(menu_cursor<0){
			menu_cursor = 0;
		}
	}
}
