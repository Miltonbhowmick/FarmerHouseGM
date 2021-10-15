/// @description Methods

room_instruction_properties = function(){
	// instructions to be showed on each room [first time showed]
	instruction_room_main = false;
	instruction_room_cave = false;
	instruction_room_gardener = false;
}
init_button = function(){
	// GUI buttons enable - disable
	// buttons for main room
	Cut = false;
	Plant = 0;
	CollectTrees = 0;
	// buttons for garden room
	start_work = false;
	stop_work = false;
	
	dress=false;
	dagger=false;
	gloves=false;
	shoes=false;
	
	draw_permission=false;
	
	//loot control
	loot_Text="";
	loot_Text2="";
	
	dressButtonPressed=false;
	daggerButtonPressed=false;
	glovesButtonPressed=false;
	shoesButtonPressed=false;
	
	
	lootdress=false;
	lootdagger=false;
	lootgloves=false;
	lootshoes=false;
	
	
	lootIndexSet1=0;
	lootIndexSet2=0;
	lootIndexSet3=0;
	lootIndexSet4=0;
	
	
		
	
}



tree_properties = function(){
	// small, medium, large tree
	init_grow_time = 10;
	init_cut_time = 10;
	tree_grow_time = init_grow_time;
	tree_cut_time = init_cut_time;
	// cut tree position
	c_tx = 0;
	c_ty = 50;
	_depth = 2;		
	// how many cut trees can the tree carrier can carry
	stack_loaded_range = 10;
	// all ids of last cut trees
	list_cut_tree = ds_list_create();

}
tree_carrier = function(){
	// cut tree transport
	tree_transport = instance_create_layer(inst_OpenSpaceLocation.x, inst_OpenSpaceLocation.y,"Transports", oTreeTransport);
	with tree_transport{
		depth = -700;
	}
	// cut tree transport
	transport_call = false;
}

weather_properties = function(){
	// raining or not
	rain_start = false;
	raining = false;
	rain_n_times = 3;
	// drought
	droughting = false;
	drought_time = false;
}

garden_properties = function(){
	// seed value
	seed_value = 0;
	forest_call = false;
	// forest gate
	forest_call_x = inst_ForestGate.x;
	forest_call_y = inst_ForestGate.y;
	
	
}

cave_properties = function(){
	// call for cave move
	cave_call = false;
	cave_call_x = inst_CaveGate.x + 16;
	cave_call_y = inst_CaveGate.y + 10;
	// -- Enemy --
	
	EnemyCount=0;

	AttackCount=1;
	
	FarmerSpeed=.1;	
}