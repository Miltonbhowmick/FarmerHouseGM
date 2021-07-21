/// @description Create grid
globalvar rmGrid;
rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
mp_grid_add_instances(rmGrid, oSoil, true);

timeToDraw = false;