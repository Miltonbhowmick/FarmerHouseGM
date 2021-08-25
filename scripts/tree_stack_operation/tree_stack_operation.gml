// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tree_stack_operation(){
	if(GameManager.c_ty<=0){
		GameManager.c_tx+=4;
		GameManager.c_ty=50;
		GameManager._depth-=10;
	}
	var cut_tree = instance_create_layer(inst_TreeStackPosition.x+GameManager.c_tx,inst_TreeStackPosition.y+GameManager.c_ty,"Trees",oTreeStack);
	ds_list_add(GameManager.list_cut_tree, cut_tree);

	var dp = GameManager._depth;
	with cut_tree {
		depth = dp;
	}
	GameManager.c_ty-=10;

}