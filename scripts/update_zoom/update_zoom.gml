// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_zoom(){
	var px = argument[0];
	var py = argument[1];
	var zoom = argument[2];
	
	var mx = (px - camera_get_view_x(view_camera[0]))/camera_get_view_width(view_camera[0]);
	var my = (py - camera_get_view_y(view_camera[0]))/camera_get_view_height(view_camera[0]);

	camera_set_view_size(view_camera[0], base_width/zoom, base_height/zoom);
	
	var view_x = (base_width/zoom)* mx;
	var view_y = (base_height/zoom)* my;
	
	camera_set_view_pos(view_camera[0], px-view_x, py-view_y);

}