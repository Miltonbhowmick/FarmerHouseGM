// oManager GUI Button

Farmer = 2;
FarmerPosition = inst_FarmerPosition;

Cut = 0;
Plant = 0;
CollectTrees = 0;

// Grid for AI

global.rmGrid = mp_grid_create(0,0,room_width/16, room_height/16, 16, 16);
mp_grid_add_instances(global.rmGrid, oSoil, true);
mp_grid_add_instances(global.rmGrid, oBlock, true);
mp_grid_add_instances(global.rmGrid, oObstacle, true);
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

