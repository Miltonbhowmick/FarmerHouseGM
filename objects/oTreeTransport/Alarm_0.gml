/// @description

myPath = path_add();
if(mp_grid_path(global.rmGrid_transport, myPath, x, y, inst_OpenSpaceLocation.x, inst_OpenSpaceLocation.y, false)){
	path_start(myPath,1,path_action_stop,false);
}
if (GameManager.CollectTrees >= GameManager.stack_loaded_range){
	GameManager.CollectTrees -= GameManager.stack_loaded_range;
	var sz = ds_list_size(GameManager.list_cut_tree);
	
	for(var i=0; i<GameManager.stack_loaded_range;i++){
		var tree_in_stack = ds_list_find_value(GameManager.list_cut_tree,sz-1-i);
		ds_list_delete(GameManager.list_cut_tree,sz-1-i);
		with (tree_in_stack){
			instance_destroy(tree_in_stack);
		}
	}
	
	GameManager.c_tx = ds_list_find_value(GameManager.list_cut_tree,sz-1).x;
	GameManager.c_ty = ds_list_find_value(GameManager.list_cut_tree,sz-1).y;
	
}