/// @description

// all data save 
var _saveData = {};
// all instances save
var _instances = [];
with(all){
	var _saveEntity = {
		obj: object_get_name(object_index),
		x: x,
		y: y,
		image_index: image_index,
		image_blend: image_blend,
	}
	array_push(_instances, _saveEntity);
}

_saveData[$ "instances"] = _instances; 


SaveString(json_stringify(_saveData),"game_save.json");

scr_saveGame();