/// @description 
near_farmer = instance_nearest(x,y,oFarmer);
new_direction = point_direction(x,y,near_farmer.x,near_farmer.y) + irandom_range(-20,20);
speed = .5;
direction = new_direction;
show_message("3");
if(alarm[0]<0){
	alarm[0] = room_speed*3;
}