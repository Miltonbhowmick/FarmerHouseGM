// oGameManager instance

GameManager = inst_GameManager;
// large tree instance
inst_large_tree = noone;	
if(room==rGarden){
	GardenManager = inst_GardenManager;

	_start_gx = -1;
	_start_gy = -1;
	moved = true;
	
	// moving blocks
	mp_grid_add_instances(global.rmGarden,oFlower,true);
	mp_grid_add_instances(global.rmGarden,oDungeonTree,true);
	mp_grid_add_instances(global.rmGarden,oSmallStone,true);
}