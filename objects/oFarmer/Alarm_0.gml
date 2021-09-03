if(room==rMain){
	// sound on each cut of tree
	audio_play_sound(snd_Destroy,10,false);
	// increasing number of cut tree
	GameManager.CollectTrees++;
	GameManager.coins++;

	// Tree stack operation
	tree_stack_operation();
	
	// To trigger the operation again
	ck=true;
	instance_destroy(inst_large_tree);
}
else if (room==rCave){
	myPath = path_add();
	near_enemy = instance_nearest(x,y,oEnemySoldier);
	if(instance_exists(near_enemy)){
		if(mp_grid_path(global.cave_rmGrid,myPath,x,y,near_enemy.x,near_enemy.y,false)){
			path_start(myPath,1,path_action_stop,false);
		}
	}
}