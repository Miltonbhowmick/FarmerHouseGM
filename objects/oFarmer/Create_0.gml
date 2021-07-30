inst_object = noone;

// large tree instance
inst_large_tree = noone;
// ck as trigger
ck = true;

// oGameManager instance
GameManager  = inst_GameManager;

// initialize instance of farmer dropped
FarmerPosition = inst_FarmerPosition;
if(GameManager.CollideResponse==noone){
	GameManager.CollideResponse = id;
}

// bubble message
bubble_message = noone;