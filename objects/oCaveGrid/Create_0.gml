/// @description Create grid

// For farmer 
globalvar cave_rmGrid;
global.cave_rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
mp_grid_add_instances(global.cave_rmGrid, oBlock_16x16, true);
mp_grid_add_instances(global.cave_rmGrid, oFarmer, true);

timeToDraw = false;