
// oCameraControl
camera_control = instance_create_layer(250,250,"GUI", oCameraControl);

// first time show
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

// oManager GUI Button
Farmer = 2;
FarmerPosition = inst_FarmerPosition;

Cut = false;
Plant = 0;
CollectTrees = 0;

// Grid for AI
global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);
mp_grid_add_instances(global.rmGrid, oFarmer, true);

// Farmer create
//bubble_range = 16;
CollideResponse = noone;

// create go go...
go_go = false;


// Soil create
soil_create = false;
sp_grid = 16;
spx = 32;
spy = 192;

// soil up create x,y
up_x = FarmerPosition.x - (sp_grid*3);
up_y = FarmerPosition.y - (sp_grid*9);

// soil down create x,y
down_x = FarmerPosition.x - (sp_grid*3);
down_y = FarmerPosition.y + (sp_grid*8);

// soil side x,y
//side_x = down_x - sp_grid*up_down_soil;

soil_layer = 3;
up_down_soil = 4*3;
side_soil = 11;
side_gap = 16;

prev_total = 9;
total_create = 0;


// Resources
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
tree_transport = instance_create_layer(inst_OpenSpaceLocation.x, inst_OpenSpaceLocation.y,"Transports", oTreeTransport);
with tree_transport{
depth = -1000;
}
stack_loaded_range = 10;
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

// -- Cave --
// call for cave move
cave_call = false;
cave_call_x = inst_CaveGate.x + 16;
cave_call_y = inst_CaveGate.y + 10;

// -- Enemy --
// enemy soldier
initial_enemy_soldier = 3;
number_enemy_soldier = 3;

//variables for roomCave
globalvar EnemyCount;
EnemyCount=0;
globalvar AttackCount;
AttackCount=1;
globalvar FarmerSpeed;
FarmerSpeed=.1;