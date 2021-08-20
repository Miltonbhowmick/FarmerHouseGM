/// @description

myPath = path_add();
if(mp_grid_path(global.rmGrid_transport, myPath, x, y, inst_OpenSpaceLocation.x, inst_OpenSpaceLocation.y, false)){
	path_start(myPath,1,path_action_stop,false);
}
if (GameManager.CollectTrees == GameManager.stack_loaded_range){
	GameManager.CollectTrees-=GameManager.stack_loaded_range;
}