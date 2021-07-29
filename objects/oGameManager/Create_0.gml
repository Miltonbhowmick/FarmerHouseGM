Farmer = 2;
FarmerPosition = inst_FarmerPosition;

Cut = 0;
Plant = 0;
CollectTrees = 0;

// Grid for AI
global.rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
mp_grid_add_instances(global.rmGrid, oSoil, true);
mp_grid_add_instances(global.rmGrid, oBlock, true);
mp_grid_add_instances(global.rmGrid, oObstacle, true);


// Farmer create
bubble_range = 16;

// Soil create
soil_create = false;
sp_grid = 32;
spx = 32;
spy = 192;
