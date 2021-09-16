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

// grid for garden room
timeToDraw = false;
globalvar rm_road_path;
global.rm_road_path = mp_grid_create(0,0, room_width/16,room_height/16,16,16);

// source gate
sx = inst_sf.x;
sy = inst_sf.y;
// destination gate
dx = inst_df.x;
dy = inst_df.y;

// Trees, Flowers, rocks creation
event_user(0);


// Roads creation
mp_grid_add_instances(global.rm_road_path,oFlower,true);
mp_grid_add_instances(global.rm_road_path,oDungeonTree,true);
mp_grid_add_instances(global.rm_road_path,oSmallStone,true);

event_user(1);

//show_message(random_get_seed()*.25);
