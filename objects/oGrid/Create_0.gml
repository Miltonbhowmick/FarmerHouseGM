/// @description Create grid
globalvar rmGrid;
rmGrid = mp_grid_create(0,0,room_width, room_height, room_width/128, room_height/128);
mp_grid_add_instances(rmGrid, oSoil, true);

timeToDraw = false;