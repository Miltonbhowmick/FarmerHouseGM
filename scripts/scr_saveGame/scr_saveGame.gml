// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_saveGame(){
	var _saveData = array_create(0);
	
	// for every instance, creating a struct and adding it to the array
	with(oCameraControl){
		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			x : camera_get_view_x(view_camera[0]),
			y : camera_get_view_y(view_camera[0]),
			image_index: image_index,
			image_blend: image_blend,
		}
		show_debug_message(_saveEntity);
		array_push(_saveData, _saveEntity);
	}
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedgame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game saved! " + _string);
	
} 