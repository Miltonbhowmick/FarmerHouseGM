/// @description Insert description here
// You can write your code in this editor

if(GameManager.Cut){
	if(GameManager.CollectTrees<=GameManager.stack_loaded_range){
		MousePressed++;
		if(MousePressed==OccupiedSoil.number_of_click){	
			instance_destroy();
			GameManager.CollectTrees++;
			GameManager.coins++;
		
			// tree stack operation
			tree_stack_operation();
		
			// re-initialize
			soil.PlantTree = noone;
			MousePressed=0;
		}
	}
}