// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loadGame(){
	with (oCameraControl) instance_destroy();
	
	if(file_exists("savedgame.save")){
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		show_debug_message(_loadData);
		while(array_length(_loadData)>0){
			var _loadEntity = array_pop(_loadData);
			show_debug_message(_loadEntity.x);
			show_debug_message(_loadEntity.y);
			
			var cm = instance_create_layer(_loadEntity.x,_loadEntity.y,layer,asset_get_index(_loadEntity.obj))
			show_debug_message(cm.x);
			show_debug_message(cm.y);
			
			show_debug_message(string(cm.x)+"--"+ string(cm.y));
			
		}
		show_debug_message("Game Loaded! " + _string);
		
	}
}