
if(room == rMain){
	if(go_go && mouse_check_button_pressed(mb_left)){		
		go_go = false;
		// calculating mouse click on mid point of the grid	
		spx = floor(mouse_x/sp_grid)*sp_grid;
		spy = floor(mouse_y/sp_grid)*sp_grid;

		if( up_y<spy && spy<down_y){
				/// up_x and down_x same here
			if(side_soil*sp_grid == (FarmerPosition.x - spx)){
				if((spy/sp_grid)%3==0 || (spy/sp_grid)%3==1 ){
					if((spy/sp_grid)%3==0){
						spx-=sp_grid;
					}
					else{
						spx-=sp_grid;
						spy-=sp_grid;
					}
					total_create++;
					var px = spx,py=spy;
					custom_destroy_instance(spx, spy, oBlock_16x16);
					instance_create_layer(spx, spy, "Soils", oSoil);
					custom_destroy_instance(spx-sp_grid,spy-sp_grid, oBlock_16x16);
					instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads", oH_Road);
					custom_destroy_instance(spx-sp_grid,spy, oBlock_16x16);
					instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);
					custom_destroy_instance(spx,spy-sp_grid, oBlock_16x16);
					instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);
						
					px = spx + sp_grid;
					custom_destroy_instance(px+sp_grid,spy-sp_grid, oBlock);
					instance_create_layer(px+sp_grid,spy-sp_grid,"Roads", oH_Road);
					custom_destroy_instance(px+sp_grid,spy, oBlock);
					instance_create_layer(px+sp_grid,spy,"Roads", oH_Road);
					custom_destroy_instance(px,spy-sp_grid,oBlock);
					instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
					
					py = spy + sp_grid;
					custom_destroy_instance(spx-sp_grid,py+sp_grid,oBlock);
					instance_create_layer(spx-sp_grid,py+sp_grid,"Roads", oH_Road);
					custom_destroy_instance(spx-sp_grid,py,oBlock);
					instance_create_layer(spx-sp_grid,py,"Roads", oH_Road);
					custom_destroy_instance(spx,py+sp_grid,oBlock);
					instance_create_layer(spx,py+sp_grid,"Roads", oH_Road);
					
					px = spx+sp_grid;
					py = spy+sp_grid;
					custom_destroy_instance(px+sp_grid,py+sp_grid,oBlock);
					instance_create_layer(px+sp_grid,py+sp_grid, "Roads", oH_Road);
					custom_destroy_instance(px+sp_grid,py,oBlock);
					instance_create_layer(px+sp_grid,py, "Roads", oH_Road);
					custom_destroy_instance(px,py+sp_grid,oBlock);
					instance_create_layer(px,py+sp_grid, "Roads", oH_Road);
				}
			
			}
		}
	
		if(FarmerPosition.y<spy){
			if( (FarmerPosition.x - ((sp_grid*up_down_soil)))<=spx && (spx <= down_x || spx-sp_grid <= down_x )){
				// down
				var possible1 = FarmerPosition.x - spx;
				var possible2 = FarmerPosition.x - (spx-sp_grid);
			
				if(spy == down_y){
					if((possible1/sp_grid)%3==0){
						total_create++;
						var px = spx,py=spy;
						custom_destroy_instance(spx, spy,oBlock);
						instance_create_layer(spx, spy, "Soils", oSoil);
						custom_destroy_instance(spx-sp_grid, spy-sp_grid,oBlock);
						instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads", oH_Road);
						custom_destroy_instance(spx-sp_grid, spy,oBlock);
						instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);
						custom_destroy_instance(spx,spy-sp_grid,oBlock);
						instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);
					
						px = spx + sp_grid;
						custom_destroy_instance(px,spy-sp_grid,oBlock);
						instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
						custom_destroy_instance(px+sp_grid,spy,oBlock);
						instance_create_layer(px+sp_grid,spy,"Roads", oH_Road);
						custom_destroy_instance(px,spy-sp_grid,oBlock);
						instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
					
						py = spy + sp_grid;
						custom_destroy_instance(spx-sp_grid,py+sp_grid,oBlock);
						instance_create_layer(spx-sp_grid,py+sp_grid,"Roads", oH_Road);
						custom_destroy_instance(spx-sp_grid,py,oBlock);
						instance_create_layer(spx-sp_grid,py,"Roads", oH_Road);
						custom_destroy_instance(spx,py+sp_grid,oBlock);
						instance_create_layer(spx,py+sp_grid,"Roads", oH_Road);
					
						px = spx+sp_grid;
						py = spy+sp_grid;
						custom_destroy_instance(px+sp_grid,py+sp_grid,oBlock);
						instance_create_layer(px+sp_grid,py+sp_grid, "Roads", oH_Road);
						custom_destroy_instance(px+sp_grid,py,oBlock);
						instance_create_layer(px+sp_grid,py, "Roads", oH_Road);
						custom_destroy_instance(px,py+sp_grid,oBlock);
						instance_create_layer(px,py+sp_grid, "Roads", oH_Road);
					}
					else if((possible2/sp_grid)%3==0){
						total_create++;
						instance_create_layer(spx-sp_grid, spy, "Soils", oSoil);
					
						spx-=sp_grid;
						var px = spx,py=spy;
						custom_destroy_instance(spx,spy,oBlock);
						instance_create_layer(spx, spy, "Soils", oSoil);
						custom_destroy_instance(spx-sp_grid,spy-sp_grid,oBlock);
						instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads", oH_Road);
						custom_destroy_instance(spx-sp_grid,spy,oBlock);
						instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);
						custom_destroy_instance(spx,spy-sp_grid,oBlock);
						instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);
					
						px = spx + sp_grid;
						custom_destroy_instance(px,spy-sp_grid,oBlock);
						instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
						custom_destroy_instance(px+sp_grid,spy,oBlock);
						instance_create_layer(px+sp_grid,spy,"Roads", oH_Road);
						custom_destroy_instance(px,spy-sp_grid,oBlock);
						instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
					
						py = spy + sp_grid;
						custom_destroy_instance(spx-sp_grid,py+sp_grid,oBlock);
						instance_create_layer(spx-sp_grid,py+sp_grid,"Roads", oH_Road);
						custom_destroy_instance(spx-sp_grid,py,oBlock);
						instance_create_layer(spx-sp_grid,py,"Roads", oH_Road);
						custom_destroy_instance(spx,py+sp_grid,oBlock);
						instance_create_layer(spx,py+sp_grid,"Roads", oH_Road);
					
						px = spx+sp_grid;
						py = spy+sp_grid;
						custom_destroy_instance(px+sp_grid,py+sp_grid, oBlock);
						instance_create_layer(px+sp_grid,py+sp_grid, "Roads", oH_Road);
						custom_destroy_instance(px+sp_grid,py,oBlock);
						instance_create_layer(px+sp_grid,py, "Roads", oH_Road);
						custom_destroy_instance(px,py+sp_grid,oBlock);
						instance_create_layer(px,py+sp_grid, "Roads", oH_Road);
					}
				}
			
			}	
		}
		else{
			if( (FarmerPosition.x - ((sp_grid*up_down_soil)))<=spx && (spx <= up_x || spx-sp_grid <= up_x )){
				// up
				var possible1 = FarmerPosition.x - spx;
				var possible2 = FarmerPosition.x - (spx-sp_grid);
					if(spy == up_y){
						spy-=sp_grid;
						if((possible1/sp_grid)%3==0){
							total_create++;
							var px = spx,py=spy;
							custom_destroy_instance(spx, spy, oBlock);
							instance_create_layer(spx, spy, "Soils", oSoil);
							custom_destroy_instance(spx-sp_grid,spy-sp_grid, oBlock);
							instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads", oH_Road);
							custom_destroy_instance(spx-sp_grid,spy, oBlock);
							instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);
							custom_destroy_instance(spx,spy-sp_grid, oBlock);
							instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);
						
							px = spx + sp_grid;
							custom_destroy_instance(px+sp_grid,spy-sp_grid, oBlock);
							instance_create_layer(px+sp_grid,spy-sp_grid,"Roads", oH_Road);
							custom_destroy_instance(px+sp_grid,spy, oBlock);
							instance_create_layer(px+sp_grid,spy,"Roads", oH_Road);
							custom_destroy_instance(px,spy-sp_grid,oBlock);
							instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
					
							py = spy + sp_grid;
							custom_destroy_instance(spx-sp_grid,py+sp_grid,oBlock);
							instance_create_layer(spx-sp_grid,py+sp_grid,"Roads", oH_Road);
							custom_destroy_instance(spx-sp_grid,py,oBlock);
							instance_create_layer(spx-sp_grid,py,"Roads", oH_Road);
							custom_destroy_instance(spx,py+sp_grid,oBlock);
							instance_create_layer(spx,py+sp_grid,"Roads", oH_Road);
					
							px = spx+sp_grid;
							py = spy+sp_grid;
							custom_destroy_instance(px+sp_grid,py+sp_grid,oBlock);
							instance_create_layer(px+sp_grid,py+sp_grid, "Roads", oH_Road);
							custom_destroy_instance(px+sp_grid,py,oBlock);
							instance_create_layer(px+sp_grid,py, "Roads", oH_Road);
							custom_destroy_instance(px,py+sp_grid,oBlock);
							instance_create_layer(px,py+sp_grid, "Roads", oH_Road);
						}
						else if((possible2/sp_grid)%3==0){
							total_create++;
							instance_create_layer(spx-sp_grid, spy, "Soils", oSoil);
							spx-=sp_grid;
							var px = spx,py=spy;
							custom_destroy_instance(spx, spy,oBlock);
							instance_create_layer(spx, spy, "Soils", oSoil);
							custom_destroy_instance(spx-sp_grid,spy-sp_grid,oBlock);
							instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads", oH_Road);
							custom_destroy_instance(spx-sp_grid,spy,oBlock);
							instance_create_layer(spx-sp_grid,spy,"Roads", oH_Road);
							custom_destroy_instance(spx,spy-sp_grid,oBlock);
							instance_create_layer(spx,spy-sp_grid,"Roads", oH_Road);
					
							px = spx + sp_grid;
							custom_destroy_instance(px,spy-sp_grid,oBlock);
							instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
							custom_destroy_instance(px+sp_grid,spy,oBlock);
							instance_create_layer(px+sp_grid,spy,"Roads", oH_Road);
							custom_destroy_instance(px,spy-sp_grid,oBlock);
							instance_create_layer(px,spy-sp_grid,"Roads", oH_Road);
					
							py = spy + sp_grid;
							custom_destroy_instance(spx-sp_grid,py+sp_grid,oBlock);
							instance_create_layer(spx-sp_grid,py+sp_grid,"Roads", oH_Road);
							custom_destroy_instance(spx-sp_grid,py,oBlock);
							instance_create_layer(spx-sp_grid,py,"Roads", oH_Road);
							custom_destroy_instance(spx,py+sp_grid,oBlock);
							instance_create_layer(spx,py+sp_grid,"Roads", oH_Road);
					
							px = spx+sp_grid;
							py = spy+sp_grid;
							custom_destroy_instance(px+sp_grid,py+sp_grid,oBlock);
							instance_create_layer(px+sp_grid,py+sp_grid, "Roads", oH_Road);
							custom_destroy_instance(px+sp_grid,py,oBlock);
							instance_create_layer(px+sp_grid,py, "Roads", oH_Road);
							custom_destroy_instance(px,py+sp_grid,oBlock);
							instance_create_layer(px,py+sp_grid, "Roads", oH_Road);
						}
					}
			}
		}
	
		// initialize mp grid
		mp_grid_clear_all(global.rmGrid);
		global.rmGrid = mp_grid_create(0,0,room_width/4, room_height/4,4,4);
		mp_grid_add_instances(global.rmGrid, oBlock_16x16, true);
		mp_grid_add_instances(global.rmGrid, oBlock_16x16_mc, true);
		mp_grid_add_instances(global.rmGrid, oBlock_32x32_tl, true);


		if(total_create == prev_total+4){
			soil_layer++;
			up_y -= (sp_grid*3);
			down_y += (sp_grid*3);
	//		instance_create_layer(FarmerPosition.x-sp_grid, down_y, "Trees", oLargeTree);
			prev_total = total_create;
			total_create = 0;
			up_down_soil+=4;
			side_soil += 3;
			side_gap +=6;
		}
	}

	if(soil_create){
		go_go = true;
		soil_create = false;
	}
}
else if(room==rCave){
	if(Farmer<2){
		if(instance_number(oFarmer)>0){
			var farmer = instance_create_layer(inst_CaveFarmerPosition.x-32,inst_CaveFarmerPosition.y,"Farmers", oFarmer);
		}
		else{
			instance_create_layer(inst_CaveFarmerPosition.x,inst_CaveFarmerPosition.y,"Farmers", oFarmer);
		}
		Farmer++;
	}
	if(initial_enemy_soldier>0){
		_x = irandom_range(128,550);
		_y = irandom_range(222,352);
		instance_create_layer(_x,_y,"Enemies",oEnemySoldier);
		initial_enemy_soldier--;
	}
	if(number_enemy_soldier==0){
		instance_create_layer(-64,256,"Enemies",oEnemyBoss);
		number_enemy_soldier--;
	}
}