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

// Random Trees, Flowers, rocks
randomize();

//show_message(random_get_seed()*.25);
