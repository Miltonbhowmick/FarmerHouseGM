/// @description

if(keyboard_check_pressed(vk_anykey) && string_length(text)<10){
	if(keyboard_string>="0" && keyboard_string<="9"){
		text = text + string(keyboard_string);
	}
	keyboard_string = "";
}
if(keyboard_check_pressed(vk_space)){
	instance_create_layer(0,0,"Managers", oGardenManager);
	if(text == ""){ 
		text = text + string(irandom(10000));
	}
	GardenManager.seed_value = real(text);
	
	seed_input = false;
	instance_destroy();
	keyboard_virtual_hide();
}

