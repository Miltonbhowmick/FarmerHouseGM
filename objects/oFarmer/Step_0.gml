// mp grid path speed 


if(room==rMain){
	path_speed = .5;
	
	if(x==GameManager.cave_call_x && y==GameManager.cave_call_y){
		GameManager.cave_call=false;
		room_goto(rCave);
	}
	if(x==GameManager.forest_call_x && y==GameManager.forest_call_y){
		GameManager.forest_call=false;
		room_goto(rGarden);
	}

	if(GameManager.cave_call){
		myPath = path_add();
		if(mp_grid_path(global.rmGrid, myPath, x,y,GameManager.cave_call_x, GameManager.cave_call_y, false)){
			path_start(myPath, 2, path_action_stop, true);
		}
	}
	else if(GameManager.forest_call){
		myPath = path_add();
		if(mp_grid_path(global.rmGrid, myPath, x,y,GameManager.forest_call_x, GameManager.forest_call_y, false)){
			path_start(myPath, 200, path_action_stop, true);
		}
	}
	else{

		// Two farmer collision -> old distance_to_object 25 , co-circle 22
		if(distance_to_object(oFarmerPosition)>=22 && collision_circle(x,y,20, oFarmer, false,true)){
	
			// near farmer on collision moment
			near_farmer = instance_nth_nearest(x,y,oFarmer,2);
			// changing grid size 2x2
			mp_grid_clear_all(global.rmGrid);
			global.rmGrid = mp_grid_create(0,0,room_width/2, room_height/2, 2, 2);
			mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
			mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
			mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);
			mp_grid_add_instances(global.rmGrid, near_farmer , true);
			// bubble message position
			var mid_x=0;
			var mid_y=0;
			with oFarmer{
				mid_x+=x;
				mid_y+=y;
			}
			mid_x = mid_x/2;
			mid_y = mid_y/2;
	
			// "Excuse me" message
			bubble_message = instance_create_layer(x-15,y-15,"Bubbles",oBubbleMessage);
			with bubble_message {
				alarm[0] = 1;
			}
			alarm[1] = room_speed * .4;
		}

		// Farmer is running to large tree
		if(GameManager.CollectTrees>=GameManager.stack_loaded_range or instance_number(oLargeTree)<1){
			myPath = path_add();
			if(mp_grid_path(rmGrid, myPath, x, y ,farmer_pos_x, farmer_pos_y, true)){
				path_start(myPath, 2, path_action_stop, true);
			}
			ck=true;
		}
		else
		{	
			//OLD PATH MOVING
			if(ck){
				inst_large_tree = instance_nearest(x,y,oLargeTree);
				if(instance_exists(inst_large_tree) && inst_large_tree.OccupiedFarmer!=noone && inst_large_tree.OccupiedFarmer!=id){
					inst_large_tree = instance_nth_nearest(x,y,oLargeTree,2);
				}
			}
	
			if(instance_exists(inst_large_tree)){
				if(inst_large_tree.OccupiedFarmer==noone || inst_large_tree.OccupiedFarmer == id){
					ck=false;
					inst_large_tree.OccupiedFarmer = id;
					// 35 is grid_size + 3
					if((x==inst_large_tree.x+28 && y==inst_large_tree.y+25) || (x==inst_large_tree.x+20 && y==inst_large_tree.y) ||(x==inst_large_tree.x-4 && y==inst_large_tree.y+20) ){
						if(alarm[0]<0){
							alarm[0] = room_speed  * GameManager.tree_cut_time;
						}
					}
					else{
						myPath = path_add();
						if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x+28, inst_large_tree.y+25, false)){
							path_start(myPath, 2, path_action_stop, true);
						}
						else if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x+20, inst_large_tree.y, false)){
							path_start(myPath, 2, path_action_stop, true);
						}
						else if(mp_grid_path(rmGrid, myPath, x, y ,inst_large_tree.x-4, inst_large_tree.y+20, false)){
							path_start(myPath, 2, path_action_stop, true);
						}
					}
				}
			}
	
		}
	}
}
else if(room==rCave){
	path_speed = .5;
	
	if(GameManager.AttackCount<15)
	   move_towards_point(oEnemySoldier.x+50,oEnemyBoss.y,GameManager.FarmerSpeed);
	   if(GameManager.AttackCount>14 && GameManager.AttackCount<25)
	   move_towards_point(oEnemyBoss.x+50,oEnemyBoss.y,GameManager.FarmerSpeed);
		
}


//all works for farmer in garden room and will collect stone
else if(room==rGarden)

{
	
	
	
	///added by sourav
	if(GardenManager.collecStone=="start_farmers" && instance_exists(oLargeStone))
	 {
	 
	  
		 
		    myPath = path_add();
		  
			if( mp_grid_path(rmGarden, myPath, x, y ,oLargeStone.x, oLargeStone.y, false)) 
		   
			    {
		             path_start(myPath, 2, path_action_stop, true);
		 
		        } 
			
      }
	 
	 //move to initial position after collect all stone
	if(GardenManager.collecStone=="start_farmers" && !instance_exists(oLargeStone))
	   {
	        myPath = path_add();
	        mp_grid_path(rmGarden, myPath, x, y ,GardenManager._fx,GardenManager._fy, false)
			path_start(myPath, 2, path_action_stop, true);
		
	    }
	 
	 
	 //stop for 2 sec when collect stones
	  if(distance_to_object(oLargeStone)<5  && GardenManager.collecStone=="start_farmers")
	  {
          
		        path_end();
				//mp_grid_clear_cell(rg , floor(oLargeStone.x / 16), floor(oLargeStone.y /16));
				
		  
	  }
	
	//stop when click stop button pressed
	 if(GardenManager.collecStone=="stop_farmers")
	  {
			     path_end();
			 
	  }
			 
	//mouse check
	if(mouse_check_button_pressed(mb_right) )
	 {
			   GardenManager.collecStone="right_button_pressed";
			   mp_grid_path(rmGarden, myPath, x, y ,mouse_x+16, mouse_y+16, false)
			   path_start(myPath, 2, path_action_stop, true);
				

	 }
			
			
}