/// @description Insert description here
// You can write your code in this editor

if(GameManager.Cut){
	MousePressed++;
	if(MousePressed==GameManager.number_of_click){	
		instance_destroy();
		GameManager.CollectTrees++;
		soil.PlantTree = noone;
		MousePressed=0;
	}
}