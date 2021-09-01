
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