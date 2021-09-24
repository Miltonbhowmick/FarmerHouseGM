/// @description 
GameManager = inst_GameManager;

GameManager.instruction_room_main = true;

// instructions

op_x = 128;
op_y = 64;

text_logo_pad_x = 40;
text_logo_pad_y = 10;

op_space = 35;

farmer_btn = "Farmer: Bring out Farmers";
plant_tree_btn =  "Plant tree on land/soil";
cutter_btn = "Collect Cutter to cut trees manually";
transport_btn = "Bring a truck to transport wood After cutting 10 trees";
cave_gate_btn =  "Move Farmer to a dungeon to collect axe which can\ncut trees 33% faster";

// continue button
continue_text = "Continue";
continue_x = camera_get_view_width(view_camera[0])-182;
continue_y = camera_get_view_height(view_camera[0])-80;
