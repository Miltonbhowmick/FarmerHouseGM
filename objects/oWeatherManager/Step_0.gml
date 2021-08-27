/// @description 
var v = irandom_range(1,6);
show_debug_message(v);
if(!GameManager.raining && v==2){	
	part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,10);
	alarm[0] = room_speed * 7 ;
	GameManager.raining = true;
}