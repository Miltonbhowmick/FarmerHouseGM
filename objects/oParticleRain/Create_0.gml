/// @description 

xStart = 0;
yStart = 0;

RoomWidth = camera_get_view_width(room_width);

globalvar emitterRain;
global.emitterRain = part_emitter_create(global.particle_system);

part_emitter_region(global.particle_system, global.emitterRain, xStart, xStart + 1340, yStart-50, yStart-50, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.particle_system, global.emitterRain, global.particleType_Rain,10)
