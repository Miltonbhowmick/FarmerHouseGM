
// oGameManager instance
GameManager  = inst_GameManager;

inst_object = noone;
depth = -400;

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