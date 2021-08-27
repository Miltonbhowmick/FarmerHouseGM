/// @description 

xStart = 0;
yStart = 0;

RoomWidth = camera_get_view_width(room_width);

emitterRain = part_emitter_create(oParticleSetup.particle_system);

part_emitter_region(oParticleSetup.particle_system, emitterRain, xStart, xStart + 1340, yStart-50, yStart-50, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(oParticleSetup.particle_system, emitterRain, oParticleSetup.particleType_Rain,10)
