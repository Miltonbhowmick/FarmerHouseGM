// oGameManager instance

GameManager = inst_GameManager;

inst_object = noone;
// room gate
farmer_pos_x = x;
farmer_pos_y = y;

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

// enemey
enemy_range = 1;
near_enemy = noone;


if(room==rCave){
	sprite_set_speed(sMovingRoad,2,2);
    path_start(pFireStick,2,path_action_stop,true);
    path_end();
}
if(room==rGarden){
	
	GardenManager = inst_GardenManager;
	_start_gx = -1;
	_start_gy = -1;
	
	// moving blocks
	mp_grid_add_instances(global.rmGarden,oFlower,true);
	mp_grid_add_instances(global.rmGarden,oDungeonTree,true);
	mp_grid_add_instances(global.rmGarden,oSmallStone,true);
}