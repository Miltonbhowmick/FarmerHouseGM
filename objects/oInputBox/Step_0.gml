/// @description

if(keyboard_check_pressed(vk_anykey) && string_length(text)<20){
	text = text + string(keyboard_string);
	keyboard_string = "";
}
if(keyboard_check_pressed(vk_space)){
	instance_create_layer(0,0,"Managers", oGardenManager);
	GameManager.seed_value = real(text);
	show_message(GameManager.seed_value);
	keyboard_virtual_hide();
}

