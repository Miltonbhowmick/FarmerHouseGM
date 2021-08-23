/// @description 

// Transport move
if (moving && inst_OpenSpaceLocation.x == floor(x) && inst_OpenSpaceLocation.y == floor(y)){
	moving = false;
}

if(inst_TreeStackPosition.x+16==floor(x) && inst_TreeStackPosition.y+80==floor(y)){
	if(alarm[0]<0){
		alarm[0] = room_speed * 3;	
	}
}
if(moving == false && GameManager.CollectTrees>=GameManager.stack_loaded_range){
	myPath = path_add();
	if(mp_grid_path(global.rmGrid_transport, myPath, x,y, inst_TreeStackPosition.x+16, inst_TreeStackPosition.y+80, false)){
		path_start(myPath,1,path_action_stop,false);
	}
	moving = true;	
}