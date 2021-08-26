/// @description 

// Transport move (UNDER MAINTENANCE)
/*
switch(direction div 90){
	case 0: sprite_index = sHorseCarriage_left; break;
	//case 1:
	case 2: sprite_index = sHorseCarriage_left; break;
	//case 3:
}
*/

// Transport at initial position
if (moving && inst_OpenSpaceLocation.x == floor(x) && inst_OpenSpaceLocation.y == floor(y)){
	moving = false;
	sprite_index = sHorseCarriage;
}
// after reaching tree stack position
if(inst_TreeStackPosition.x+far_from_tree_stack_x==floor(x) && inst_TreeStackPosition.y+far_from_tree_stack_y==floor(y)){
	if(alarm[0]<0){
		alarm[0] = room_speed * 3;
	}
}
// if cut tree stack is full of loaded range
if(moving == false && GameManager.CollectTrees>=GameManager.stack_loaded_range && GameManager.transport_call){
	sprite_index = sHorseCarriage_left;
	myPath = path_add();
	moving = true;
	if(mp_grid_path(global.rmGrid_transport, myPath, x,y, inst_TreeStackPosition.x+far_from_tree_stack_x, inst_TreeStackPosition.y+far_from_tree_stack_y, false)){
		path_start(myPath,1,path_action_stop,false);
	}
	GameManager.transport_call=false;
}