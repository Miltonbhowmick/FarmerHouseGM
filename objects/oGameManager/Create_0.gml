// oCameraControl
instance_create_layer(250,250,"GUI", oCameraControl);

// oManager GUI Button
Farmer = 2;
FarmerPosition = inst_FarmerPosition;

Cut = 0;
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


// -- Tree --

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


