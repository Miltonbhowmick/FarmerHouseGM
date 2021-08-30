/// @description 
var v = irandom_range(1,10);
show_debug_message(v);
if(!GameManager.raining && v==4 && GameManager.rain_n_times){	
	GameManager.raining = true;
	part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,10);
	alarm[0] = room_speed * 100 ;
	GameManager.tree_cut_time += floor(GameManager.tree_cut_time*30/100);
	GameManager.tree_grow_time -= floor(GameManager.tree_grow_time*30/100);
	GameManager.rain_n_times--;
}