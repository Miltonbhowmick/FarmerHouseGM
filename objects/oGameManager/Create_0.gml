// camera creating on game start
camera_control = instance_create_layer(250,250,"GUI", oCameraControl);

// instructions to be showed on each room [first time showed]
instruction_room_main = false;
instruction_room_cave = false;
instruction_room_gardener = false;

// Room Instructions
if(room == rMain && instruction_room_main==false){
	instance_create_layer(0,0,"Instructions", oRoom_Main);
	with (camera_control) {
		view_enabled = false;
		view_visible[0] = false;
	}
}

// total farmer available
Farmer = 2;
// farmer's position of their house gate
FarmerPosition = inst_FarmerPosition;

// GUI buttons enable - disable
Cut = false;
Plant = 0;
CollectTrees = 0;

// Grid for AI
global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);
mp_grid_add_instances(global.rmGrid, oFarmer, true);

// Farmers are colliding while moving closely 
CollideResponse = noone;

// grid size
sp_grid = 16;

// Resources or earnings
coins = 0;

// -- Tree --
// small, medium, large tree
init_grow_time = 10;
init_cut_time = 10;
tree_grow_time = init_grow_time;
tree_cut_time = init_cut_time;

// cut tree position
c_tx = 0;
c_ty = 50;
_depth = 2;
// cut tree carrier
tree_transport = instance_create_layer(inst_OpenSpaceLocation.x, inst_OpenSpaceLocation.y,"Transports", oTreeTransport);
with tree_transport{
	depth = -1000;
}
// how many cut trees can the tree carrier can carry
stack_loaded_range = 10;
// all ids of last cut trees
list_cut_tree = ds_list_create();

// -- Transport --
// cut tree transport
transport_call = false;

// -- Weather --
// raining or not
rain_start = false;
raining = false;
rain_n_times = 3;

// drought
droughting = false;
drought_time = false;

// -- Garden --
// seed value
seed = 0;

// -- Cave --
// call for cave move
cave_call = false;
cave_call_x = inst_CaveGate.x + 16;
cave_call_y = inst_CaveGate.y + 10;

// -- Enemy --
globalvar EnemyCount;
EnemyCount=0;
globalvar AttackCount;
AttackCount=1;
globalvar FarmerSpeed;
FarmerSpeed=.1;