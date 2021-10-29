/// @description 
if(mouse_check_button_pressed(mb_left)){
	
if(mouse_x>190 && mouse_x<575 && mouse_y<300)
{
drawButtonControl=true;
instance_destroy(oLootBox);
}

}