/// @description Create grid

// For farmer 
globalvar rmGrid;
global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4, 4, 4);
mp_grid_add_instances(global.rmGrid, oBlock_32x32, true);

timeToDraw = false;

// For transport
globalvar rmGrid_transport;
global.rmGrid_transport = mp_grid_create(0,0,room_width/16,room_height/16, 16,16);
mp_grid_add_instances(global.rmGrid_transport, oBlock_16x16, true);
transport_timeToDraw = false;