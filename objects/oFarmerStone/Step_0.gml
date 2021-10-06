/// @description

// to make real view from avoiding overlapping
depth=-y;

if(room==rCave)  
{      
	if(GameManager.AttackCount>14 && GameManager.AttackCount<25){
	    move_towards_point(oEnemyBoss.x+100,oEnemyBoss.y,GameManager.FarmerSpeed*6); 
	}			   
}

if(room==rGarden){
	
	// when there is no elements remained, stay in the last cut position
	if(instance_number(oSmallStone)==0){
		moved = false;
	}
	
	#region start work	
	if(moved && GameManager.start_work==true && GameManager.stop_work==false){
		GardenManager.touched = false;
		if( floor(x) ==_start_gx && floor(y) ==_start_gy){
			if(alarm[0]<0){
				show_debug_message("aise");
				alarm[0] = room_speed * 2;
			}
		}
		
		if(!instance_exists(inst_large_tree)){
			var _i = 1;
			while(_i<100){
				var _ck = false;
				// nearest tree or flower or stone instance 
				var _near_obj = instance_nth_nearest(x,y,oSmallStone,_i);
				var _nx = _near_obj.x;
				var _ny = _near_obj.y;
				// stay with a distance from tree or flower or stone instances
				var _sp = 14;
				// grid 4-neighbours
				var _drx = [-1,1,0,0]; // x change, y unchanged
				var _dry = [0,0,-1,1]; // y changed, x unchanged
				var _ln = array_length(_drx);
				// move to nearest tree or flower or stone
				var _dx = _nx, _dy = _ny;
		
				for(var j = 0; j< _ln; j++){
					if(instance_place(_nx+_drx[j]*_sp , _ny+_dry[j]*_sp,all)==noone){
						_dx = _nx+(_drx[j]*_sp);
						_dy = _ny+(_dry[j]*_sp);
						_ck=true;
						break;	
					}
				}	
				//show_debug_message(string(_nx)+ "-"+string(_ny) + string(GameManager.is_click_object(_dx,_dy)));				
				if(_ck==true){
					//show_message("pasei"+string(j));
					break;
				}
				_i++;
			}
			
			myPath = path_add();
			//show_debug_message(string(_dx)+"="+string(_dy));
			//show_message(mp_grid_path(global.rmGarden, myPath, x,y, _dx, _dy, true));

			if(mp_grid_path(global.rmGarden, myPath, x,y, _dx, _dy, true)){
				inst_large_tree = _near_obj;
				_start_gx = _dx;
				_start_gy = _dy;
				path_start(myPath,2,path_action_stop,false);
			}
			else{
				// bugs 
				// farmers not getting move if elemets is on the wall grids 
				mp_grid_clear_cell(global.rmGarden, floor(_nx/16), floor(_ny/16));
				instance_destroy(instance_place(_nx,_ny,oSmallStone));
				
			}
		}
		
		
	}
	#endregion start work
	
	#region stop work
	if(GameManager.stop_work==true && GameManager.start_work==false){
		// reinitialize to get new near tree
		inst_large_tree = noone;
				
		// click any position to call farmers moved there
		if(GardenManager.touched==true){
			// click any position to call farmers moved there
			if(mouse_check_button_pressed(mb_left)){
				GardenManager.stop_touch_x = mouse_x;
				GardenManager.stop_touch_y = mouse_y;
			}
			var _dx = GardenManager.stop_touch_x;
			var _dy = GardenManager.stop_touch_y;
			if(_dx!=-1 && _dy!=-1){
				myPath = path_add();
				if(mp_grid_path(global.rmGarden, myPath, x,y, _dx, _dy+8, true)){
					path_start(myPath,1,path_action_stop,false);
				}
			}
		}
		else{
			GardenManager.touched = true;
		}
	}
	#endregion stop work
}