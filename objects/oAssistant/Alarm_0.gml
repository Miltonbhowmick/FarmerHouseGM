/// @description 

myPath = path_add();
show_message(mp_grid_path(global.cave_rmGrid,myPath,x,y,inst_Axe.x,inst_Axe.y,false));
if(mp_grid_path(global.cave_rmGrid,myPath,x,y,inst_Axe.x,inst_Axe.y,false)){
	path_start(myPath,2,path_action_stop,false);
}