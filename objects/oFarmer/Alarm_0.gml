//show_message("aisee");

// sound on each cut of tree
audio_play_sound(snd_Destroy,10,false);
// increasing number of cut tree
GameManager.CollectTrees++;

// Tree stack operation
if(GameManager.c_ty<=0){
	show_debug_message(GameManager.c_ty);
	GameManager.c_tx+=4;
	GameManager.c_ty=50;
	GameManager._depth-=10;
}
var cut_tree = instance_create_layer(inst_TreeStackPosition.x+GameManager.c_tx,inst_TreeStackPosition.y+GameManager.c_ty,"Trees",oTreeStack);
var dp = GameManager._depth;
with cut_tree {
	depth = dp;
}
GameManager.c_ty-=10;

// To trigger the operation again
ck=true;
instance_destroy(inst_large_tree);
