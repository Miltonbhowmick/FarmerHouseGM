//show_message("aisee");

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
