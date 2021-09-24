/// @description
if(os_type==os_android){
	if(keyboard_lastkey==vk_delete){
		if(string_length(text)>=1){
			text = string_delete(text,string_length(text),1);
		}
	}
	if(keyboard_lastchar>="0" && keyboard_lastchar<="9"){
		text = text + string(keyboard_lastchar);	
		keyboard_lastchar="";
	}
	if(keyboard_lastchar==" "){
		if(text == ""){
			text = text + string(irandom(10000));
		}
		GardenManager.seed_value = real(text);
	
		seed_input = false;
		instance_destroy();
		keyboard_virtual_hide();
	}
}
else if(os_type==os_windows){

	if(keyboard_check_pressed(vk_backspace)){
		if(string_length(text)>=1){
			text = string_delete(text,string_length(text),1);
		}
	}
	if(keyboard_check_pressed(vk_anykey) && string_length(text)<10){
		if(keyboard_string>="0" && keyboard_string<="9"){
			text = text + string(keyboard_string);	
		}
		keyboard_string = "";
	}
	if(keyboard_check_pressed(vk_space)){
		if(text == ""){ 
			text = text + string(irandom(10000));
		}
		GardenManager.seed_value = real(text);
	
		seed_input = false;
		instance_destroy();
		keyboard_virtual_hide();
	}
}