/// @description Insert description here
// You can write your code in this editor
time += 0.05;
shader_set(shdGrass);
shader_set_uniform_f(u_time,time);
vertex_submit(vbuff,pr_trianglelist,-1);
shader_reset();