/// @description 

// Game manager
GameManager = inst_GameManager;

// initialize parts
environment_size = .75;
road_den_size = .25;

// cell occupied
total_cell = room_width*room_height;
environment_occupied = total_cell*environment_size;
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


//nnini



// Roads creating
event_user(1);

// Random Trees, Flowers, rocks
randomize();

//show_message(random_get_seed()*.25);
