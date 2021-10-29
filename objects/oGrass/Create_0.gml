/// @description Insert description here
// You can write your code in this editor
width = sprite_width;
height=sprite_height;

blade_size=4;
blade_sep=6;

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
vertex_format_add_custom(vertex_type_float1,vertex_usage_texcoord);


format=vertex_format_end();

vbuff=vertex_create_buffer();
vertex_begin(vbuff,format);

for(var i=0; i<width; i+=blade_sep){
	
	vertex_blade(vbuff,x+i,y+height,blade_size,height,4);
}
vertex_end(vbuff);

u_time = shader_get_uniform(shdGrass,"u_time");
time=0;