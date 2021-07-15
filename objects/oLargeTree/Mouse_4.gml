/// @description Insert description here
// You can write your code in this editor

if(GameManager.Cut){
	MousePressed++;
	if(MousePressed==3){	
		instance_destroy();
		GameManager.CollectTrees++;
		soil.PlantTree = noone;
		MousePressed=0;
	}
}