/// @description Insert description here
// You can write your code in this editor

fire_particles();


my_emitter = part_emitter_create(global.partsys_fire);
part_emitter_region(global.partsys_fire,my_emitter,460,514,220,182,ps_shape_rectangle,ps_distr_linear);