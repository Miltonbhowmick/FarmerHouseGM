/// @description 

// avoid overlapping
if(distance_to_object(oFarmer)<farmer_range || distance_to_object(oEnemySoldier)<enemy_range){
	move_towards_point(x,y,.5);
}