/// @description Insert description here
// You can write your code in this editor

if(GameManager.Cut){
	MousePressed++;
	if(MousePressed==OccupiedSoil.number_of_click){	
		instance_destroy();
		GameManager.CollectTrees++;
		GameManager.coins++;
		soil.PlantTree = noone;
		MousePressed=0;
	}
}