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

// source gate
sx = inst_sf.x;
sy = inst_sf.y;
// destination gate
dx = inst_df.x;
dy = inst_df.y;


// grid for garden room
timeToDraw = false;
globalvar rm_road_path;
global.rm_road_path = mp_grid_create(0,0, room_width/16,room_height/16,16,16);

myPath = path_add();
mp_grid_path(global.rm_road_path, myPath,sx,sy,dx,dy,0);

show_message(path_get_number(myPath));

path_num = path_get_number(myPath) - 1;

for (a = 0; a < path_num; ++a)
{
px = path_get_point_x (myPath, a);
py = path_get_point_y(myPath, a);
instance_create_layer(px, py,"Stones", oLargeStone);
}

// Random Trees, Flowers, rocks
randomize();

//show_message(random_get_seed()*.25);
