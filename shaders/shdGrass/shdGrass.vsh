//
// Simple passthrough vertex shader
//
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute float in_Weight;                   // (r,g,b,a)
varying vec4 v_vColour;

uniform float u_time;

void main()
{
	vec4 trans_pos = vec4(in_Position.xyz,1.0);
	
	float wind=(1.+sin(u_time + in_Position.x / 512. ))/2. * 64.;
	
	trans_pos.x += smoothstep(0.,1.,in_Weight * 0.5) * wind;
   
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * trans_pos;
    
    v_vColour = in_Colour;
}
