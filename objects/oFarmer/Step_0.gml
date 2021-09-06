// mp grid path speed 
path_speed = .5;
 
if(room==rMain){
	
	if(x==GameManager.cave_call_x && y==GameManager.cave_call_y){
		room_goto(rCave);
	}

	if(GameManager.cave_call){
		myPath = path_add();
		if(mp_grid_path(global.rmGrid, myPath, x,y,GameManager.cave_call_x, GameManager.cave_call_y, false)){
			path_start(myPath, 2, path_action_stop, true);
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
	
	near_enemy = instance_nearest(x,y,oEnemySoldier);
	if(instance_exists(near_enemy) && distance_to_object(oEnemySoldier)==enemy_range){
		move_towards_point(x,y,-enemy_range);
		near_enemy.life++;
	}
	
	near_enemy_boss = instance_nearest(x,y,oEnemyBoss);
	if(instance_exists(near_enemy_boss) && distance_to_object(oEnemyBoss)==enemy_range){
		move_towards_point(x,y,-enemy_range*4);
		near_enemy_boss.life++;
	}
	
	// Two farmer collision -> old distance_to_object 25 , co-circle 22
	if(place_meeting(x+3,y,oEnemyBoss) || place_meeting(x-3,y, oEnemyBoss) || place_meeting(x,y+3, oEnemyBoss) || place_meeting(x,y-3, oEnemyBoss)){
		x-=5;
		y=-5;
	}
	//if(place_meeting(x+1,y,oFarmer) || place_meeting(x-1,y,oFarmer) || place_meeting(x,y+1,oFarmer) || place_meeting(x,y-1,oFarmer)){
	if(distance_to_object(oFarmer)<4){
		//Make it change direction when it touches player object
		near_farmer = instance_nth_nearest(x,y,oFarmer,2);
		if(near_farmer.x < x){
			x+=6;
//			show_message("asdas");
		}
		if(near_farmer.y < y){
//			show_message("asdas");
			y+=6;
		}
		if(near_farmer.x > x){
//			show_message("asdas");
			x-=6;
		}
		if(near_farmer.y > y){
//			show_message("asdas");
			y-=6;
		}
	}
	
	if(alarm[0]<0){
		alarm[0]=room_speed * .5;
	}
	
	
}