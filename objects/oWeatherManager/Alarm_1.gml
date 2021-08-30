/// @description 

part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,0);
part_particles_clear(global.particle_system);
GameManager.raining = false;

GameManager.tree_cut_time -= floor(GameManager.tree_cut_time*30/100);
GameManager.tree_grow_time += floor(GameManager.tree_grow_time*30/100);