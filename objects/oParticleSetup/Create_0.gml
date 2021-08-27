/// @description 

globalvar particle_system;
global.particle_system = part_system_create_layer("Weather", 0);

#region Rain
// Rain
globalvar particleType_Rain;
global.particleType_Rain = part_type_create();

part_type_sprite(particleType_Rain, sParticleRain_Soft, 0,0,1);
part_type_size(particleType_Rain, 2,2,0,0);

part_type_gravity(particleType_Rain, 0.05, 250);

part_type_life(particleType_Rain,150,200);
part_type_orientation(particleType_Rain, 330,330, 0,0,0);

#endregion