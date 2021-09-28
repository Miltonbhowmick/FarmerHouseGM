// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fire_particles(){


	global.partsys_fire = part_system_create();
	part_system_depth(global.partsys_fire,0);
	
	global.part_fire = part_type_create();
	part_type_sprite(global.part_fire,sFire,0,0,1);
	part_type_size(global.part_fire,1.5,1,-.05,0);
	part_type_orientation(global.part_fire,0,360,2,0,0);
	part_type_color2(global.part_fire,c_orange,c_red);
	part_type_alpha3(global.part_fire,1,1,0);
	part_type_blend(global.part_fire,1);
	
	part_type_direction(global.part_fire,85,95,0,0);
	part_type_speed(global.part_fire,2,5,-.1,0);
	
	part_type_life(global.part_fire,25,35);
}