// oGameManager instance

// large tree instance
inst_large_tree = noone;	
if(room==rGarden){
	GameManager  = inst_GameManager;

	_start_gx = -1;
	_start_gy = -1;
	
	// moving blocks
	mp_grid_add_instances(global.rmGarden,oFlower,true);
	mp_grid_add_instances(global.rmGarden,oDungeonTree,true);
	mp_grid_add_instances(global.rmGarden,oSmallStone,true);
}