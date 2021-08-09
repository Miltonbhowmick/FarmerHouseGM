/// @description 

// draw and scale the sprite
draw_sprite_ext(sMenuBackground,0,x,y,width/sprite_width,height/sprite_height,0,c_white,.75);

// draw the option
draw_set_font(fMenu);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

for(var i=0; i<op_length ; i++){
	var _c = c_white;
	if(pos==i){
		_c = c_yellow;
	}
	draw_set_color(_c);
	draw_text(x+op_border, y+op_border + op_space*i, option[i]);
}
