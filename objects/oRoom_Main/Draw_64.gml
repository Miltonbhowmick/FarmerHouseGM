/// @description 

draw_set_font(fMenu);

draw_sprite(sInstructionBoard,0,x,y);

draw_sprite(sFarmerBtn,0, op_x, op_y);
draw_text(op_x+text_logo_pad_x, op_y+text_logo_pad_y, farmer_btn);

draw_sprite(sCutTreeTransportBtn,0, op_x, op_y+op_space);
draw_text(op_x+text_logo_pad_x, op_y+op_space+text_logo_pad_y, transport_btn);

draw_sprite(sTreeCutBtn,0, op_x, op_y + (op_space*2));
draw_text(op_x+text_logo_pad_x, op_y + (op_space*2) + text_logo_pad_y, cutter_btn);

draw_sprite(sPlantTreeBtn,0, op_x, op_y + (op_space*3));
draw_text(op_x+text_logo_pad_x, op_y + (op_space*3) + text_logo_pad_y, plant_tree_btn);

draw_sprite(sCaveGate,0, op_x, op_y + (op_space*4));
draw_text(op_x+text_logo_pad_x, op_y + (op_space*4) + text_logo_pad_y, cave_gate_btn);

// continue text
draw_text(continue_x ,continue_y ,continue_text);

