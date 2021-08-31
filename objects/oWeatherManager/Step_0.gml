/// @description 

// droughting
if(!GameManager.droughting && !GameManager.raining){
	sun_light = -1000;
	GameManager.droughting = true;
}

if(!GameManager.raining && GameManager.rain_start && GameManager.rain_n_times){	
	GameManager.raining = true;
	part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,10);
	// 30% fast to grow tree and 30% slow to cut tree
	GameManager.tree_cut_time += floor(GameManager.tree_cut_time*30/100);
	GameManager.tree_grow_time -= floor(GameManager.tree_grow_time*30/100);
	alarm[0] = room_speed * 10;

	GameManager.rain_n_times--;
}

