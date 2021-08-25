/// @description Insert description here
// You can write your code in this editor

if(position_meeting(x,y,oBlock_32x32_tl)==false){
	// free soil
	if(GameManager.Plant && !instance_exists(PlantTree)){
		PlantTree = instance_create_layer(x,y-10,"Trees",oSmallTree);
		PlantTree.soil = id;
	}
}
else{
	// unlock soil
	if(GameManager.CollectTrees>=3){
		with instance_position(x,y,oBlock_32x32_tl){
			mp_grid_clear_rectangle(global.rmGrid,x,y,x+32,y+32);
			instance_destroy();
			mp_grid_add_instances(global.rmGrid,oBlock_16x16_mc,true);
		}
		self.number_of_click--;
	}
}