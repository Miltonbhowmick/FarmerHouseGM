function scr_loadGame(){
	with (oCameraControl) instance_destroy();
	
	if(file_exists("savedgame.save")){
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);

		while(array_length(_loadData)>0){
			var _loadEntity = array_pop(_loadData);
			
			var cm = instance_create_layer(_loadEntity.x,_loadEntity.y,layer,asset_get_index(_loadEntity.obj))
		}
		
	}
}
