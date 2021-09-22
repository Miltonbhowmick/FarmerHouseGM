/// @description

// Game manager
GameManager = inst_GameManager;

// initialize parts
environment_size = .75;
road_den_size = .25;

// cell occupied
cell_size = 16;
hcells = floor(room_width/cell_size);
vcells = floor(room_height/cell_size);
total_cell = (hcells*vcells)-hcells;
environment_occupied = floor(total_cell*environment_size);
road_den_occupied = total_cell-environment_occupied; /// minus for fast calculation

// trees percentage
tree_percentage = 0;
// flowers percentage
flower_percentage = 0;
// stones percentage
stone_percentage = 0;

free_cell = ds_grid_create(hcells+1,vcells+1);
ds_grid_clear(free_cell,0);

// grid for garden room
timeToDraw = false;
globalvar rm_road_path;
global.rm_road_path = mp_grid_create(0,0, room_width/16,room_height/16,16,16);


// source gate
sx = room_width-cell_size;
sy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
instance_create_layer(sx,sy,"Gates",oGardenGate);
// destination gate
dx = 0;
dy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
instance_create_layer(dx,dy,"Gates",oGardenGate);

free_cell[# floor(sx/cell_size), floor(sy/cell_size)] = 1;
free_cell[# floor(dx/cell_size), floor(dy/cell_size)] = 1;

// Trees, Flowers, rocks creation
event_user(0);

// Roads creation
mp_grid_add_instances(global.rm_road_path,oFlower,true);
mp_grid_add_instances(global.rm_road_path,oDungeonTree,true);
mp_grid_add_instances(global.rm_road_path,oSmallStone,true);

event_user(1);