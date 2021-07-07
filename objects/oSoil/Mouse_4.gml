/// @description Insert description here
// You can write your code in this editor
SmallTree = instance_create_layer(x,y-10,"Trees",oSmallTree);
with(SmallTree){
	alarm[0] = room_speed * 5;
}