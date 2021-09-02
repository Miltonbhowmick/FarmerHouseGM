
if(room==rMain){
	
	// oGameManager instance
	GameManager  = inst_GameManager;

	inst_object = noone;
	depth = -400;

	// large tree instance
	inst_large_tree = noone;
	// ck as trigger
	ck = true;

	// initialize instance of farmer dropped
	FarmerPosition = inst_FarmerPosition;
	if(GameManager.CollideResponse==noone){
		GameManager.CollideResponse = id;
	}
	near_farmer = noone;
	// bubble message
	bubble_message = noone;
}
else if(room==rCave){
	myPath = path_add();
	show_message(mp_grid_path(rmGrid,myPath,x,y,oAxe.x,oAxe.y,false));
	if(mp_grid_path(rmGrid,myPath,x,y,oAxe.x,oAxe.y,false)){
		path_start(myPath,2,path_action_stop,false);	
	}
}