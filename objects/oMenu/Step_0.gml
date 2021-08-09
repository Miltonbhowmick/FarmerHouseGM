/// @description 

// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

// move through the menu
show_debug_message(string(up_key)+ "--" + string(down_key));
pos += down_key - up_key;

if (pos >= op_length){
	pos = 0;	
}
if(pos<0){
	pos = op_length -1;	
}

// selecting the options

if(accept_key){
	switch(pos){
		case 0:
			room_goto_next();
			break;
		case 1:
			// option room *pending
			break;
		case 2:
			game_end();
			break;
	}
}