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
if (room==rCave){
	
}
if(room==rGarden){
	show_message("Cut done!");
	inst_large_tree=noone;
}
