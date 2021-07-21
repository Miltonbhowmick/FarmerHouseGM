/// @description Run the path

/*
#region Change sprite based on direction moving
if(direction >= 306 or direction <= 45) {
	sprite_index = sGuard;
	image_xscale = -3;
}
if(direction >= 46 and direction <= 135) {
	sprite_index = sGuard;
	image_xscale = 3;
}
if(direction >= 136 && direction <= 225) {
	sprite_index = sGuard;
	image_xscale = 3;
}
if(direction >= 226 && direction <= 305) {
	sprite_index = sGuard;
	image_xscale = 3;
}
#endregion
#region Previous Path iterations
//New path
if(mouse_check_button_pressed(mb_left)) { //Create and run when left button is pressed
	if(instance_exists(oGoal)) //Make sure there's only one goal
		instance_destroy(oGoal);
	//Create the new goal
	instance_create_layer(mouse_x, mouse_y, layer, oGoal);
	
	//Create a path
	//myPath = path_add();
	//mp_grid_path(rmForestGrid, myPath, x, y, objGoal.x, objGoal.y, true); 
	//mp_linear_path(myPath, objGoal.x, objGoal.y, 2, false);
	//This is the best option for using paths for obstacle avoiding AI
	//mp_potential_path(myPath, objGoal.x, objGoal.y, 2, 4, false);
	//path_start(myPath, 2, path_action_stop, false);
}
//Another way of doing it, but without the bonus of path variables
if(instance_exists(oGoal)) {
	//mp_linear_step(objGoal.x, objGoal.y, 2, false);
	//mp_potential_step(objGoal.x, objGoal.y, 2, false);
	
}
#endregion

if(instance_exists(oGoal)) {
	myPath = path_add();
	if(mp_grid_path(rmGrid, myPath, x, y, oGoal.x, oGoal.y, true)) {
		path_start(myPath, 4, path_action_stop, true);
	}
}
*/