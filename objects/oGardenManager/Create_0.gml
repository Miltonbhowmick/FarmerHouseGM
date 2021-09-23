/// @description

// seed value
seed_value = -1;

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

// file load or create ds_map for gate cells
gate_cell = ds_map_create();
// load 
ini_open("map.ini");
var t_string = ini_read_string("Saved", "0", "");
if (t_string != "")
   {
   ds_map_read(gate_cell, t_string);
   }
ini_close(); 

ds_grid_clear(free_cell,0);

// grid for garden room
timeToDraw = false;
globalvar rm_road_path;
global.rm_road_path = mp_grid_create(0,0, room_width/16,room_height/16,16,16);


