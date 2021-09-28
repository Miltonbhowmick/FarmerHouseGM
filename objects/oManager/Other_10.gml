/// @description Insert description here

// You can write your code in this editor
var _width = 35;
var _height = 35;

if(room==rMain){
	var pos_x = 680-50;
	var pos_y = floor(340/2)-90;

	create_button(pos_x,pos_y, _width, _height, sFarmerBtn ,"4", on_click);
	create_button(pos_x,pos_y+op_space, _width, _height, sCutTreeTransportBtn,"1", on_click);
	create_button(pos_x,pos_y+op_space*2, _width, _height, sTreeCutBtn,"3", on_click);
	create_button(pos_x,pos_y+op_space*3, _width, _height, sPlantTreeBtn,"2", on_click);
}
if(room==rGarden){
	var pos_x = 680-50;
	var pos_y = 8;
	
	create_button(pos_x,pos_y, _width, _height, sStartWorkBtn,"5", on_click);
	create_button(pos_x-op_space,pos_y, _width, _height, sStopWorkBtn,"6", on_click);
	
}