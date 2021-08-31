// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function farmer_bubble_skip(){
	px = argument[0];
	py = argument[1];
	init_px = argument[2];
	init_py = argument[3];
	
	if(init_px+3>=px && px<=init_px-3 && init_py+3>=py && py<=init_py-3){ 
		return true;	
	}
	else{
		return false;
	}
}