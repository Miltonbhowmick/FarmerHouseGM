// camera creating on game start
camera_control = instance_create_layer(250,250,"GUI", oCameraControl);

event_user(15);

// total farmer available
Farmer = 3;
// farmer's position of their house gate
FarmerPosition = inst_FarmerPosition;
// grid size
sp_grid = 16;
// Resources or earnings
coins = 0;

room_instruction_properties();
// Room Instructions
if(room == rMain && instruction_room_main==false){
	instance_create_layer(0,0,"Instructions", oRoom_Main);
}

init_button();
// Farmers are colliding while moving closely 
CollideResponse = noone;
tree_properties();
tree_carrier();

// -- Weather --
weather_properties();
// -- Garden --
garden_properties();
// -- Cave --
cave_properties();
