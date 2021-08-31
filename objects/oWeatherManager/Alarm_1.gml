/// @description 

part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,0);
part_particles_clear(global.particle_system);
GameManager.raining = false;
GameManager.rain_start = false;

GameManager.tree_cut_time = GameManager.init_cut_time;
GameManager.tree_grow_time = GameManager.init_grow_time;