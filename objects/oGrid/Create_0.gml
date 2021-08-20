/// @description Create grid

// For farmer 
globalvar rmGrid;
global.rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
mp_grid_add_instances(global.rmGrid, oSoil, true);
mp_grid_add_instances(global.rmGrid, oBlock, true);

timeToDraw = false;

// For transport
globalvar rmGrid_transport;
global.rmGrid_transport = mp_grid_create(0,0,room_width/16,room_height/16, 16,16);
mp_grid_add_instances(global.rmGrid_transport, oBlock, true);

transport_timeToDraw = false;