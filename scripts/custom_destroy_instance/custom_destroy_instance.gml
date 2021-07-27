// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function custom_destroy_instance(){
	pointX = argument[0];
	pointY = argument[1];
	object = argument[2];
	if(instance_position(pointX,pointY,object)){
		var objBlock = instance_position(pointX,pointY,object);
		with objBlock {
			instance_destroy();
		}
	}
}