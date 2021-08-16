if(go_go && mouse_check_button_pressed(mb_left)){		
	go_go = false;
	// calculating mouse click on mid point of the grid	
	spx = floor(mouse_x/sp_grid)*sp_grid;
	spy = floor(mouse_y/sp_grid)*sp_grid;
	
	if(FarmerPosition.y<spy){
		if( (FarmerPosition.x - ((sp_grid*up_down_soil)))<=spx && (spx <= down_x || spx-sp_grid <= down_x )){
			// down
			var possible1 = FarmerPosition.x - spx;
			var possible2 = FarmerPosition.x - (spx-sp_grid);
			
			if(spy == down_y){
				if((possible1/sp_grid)%3==0){
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
	
	
	/*
	if(spy<down_y && spy>up_y){
		// left side
		if(down_x - sp_grid*up_down_soil == spx) // as now down_x==up_x
		{
			// new soil
			custom_destroy_instance(spx,spy,oBlock);
			instance_create_layer(spx,spy,"Soils",oSoil);
			total_create++;
			// new road
			custom_destroy_instance(spx-sp_grid,spy,oBlock);
			instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
		}
	}
	else{
		if(FarmerPosition.y <spy){
			if((down_x - ((sp_grid*up_down_soil)-32))<=spx && spx<=down_x){		
				// down
				if(spy==down_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx,spy+sp_grid,oBlock);
					instance_create_layer(spx,spy+sp_grid,"Roads",oH_Road);
					if(spx+sp_grid == FarmerPosition.x-sp_grid){
						// first road front of farmers
						custom_destroy_instance(spx+sp_grid,spy+sp_grid,oBlock);
						instance_create_layer(spx+sp_grid,spy+sp_grid,"Roads",oH_Road);
						custom_destroy_instance(spx+sp_grid,spy,oBlock);
						instance_create_layer(spx+sp_grid,spy,"Roads",oH_Road);	
					}
				}
			}
			else{
				// down left corner
				if(down_x - sp_grid*up_down_soil==spx && spy==down_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx-sp_grid,spy,oBlock);
					instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
					custom_destroy_instance(spx,spy+sp_grid,oBlock);
					instance_create_layer(spx,spy+sp_grid,"Roads",oH_Road);
					custom_destroy_instance(spx-sp_grid,spy+sp_grid,oBlock);
					instance_create_layer(spx-sp_grid,spy+sp_grid,"Roads",oH_Road);
				}
			}
		}
		else{
			if((up_x - ((sp_grid*up_down_soil)-32))<=spx && spx<=up_x){		
				// up
				if(spy==up_y){
					// new soil	
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx,spy-sp_grid,oBlock);
					instance_create_layer(spx,spy-sp_grid,"Roads",oH_Road);
					if(spx+sp_grid == FarmerPosition.x-sp_grid){
						// first road front of farmers					
						custom_destroy_instance(spx+sp_grid,spy-sp_grid,oBlock);
						instance_create_layer(spx+sp_grid,spy-sp_grid,"Roads",oH_Road);
						custom_destroy_instance(spx+sp_grid,spy,oBlock);
						instance_create_layer(spx+sp_grid,spy,"Roads",oH_Road);	
					}
				}
			}
			else{
				// up left corner
				if(up_x - sp_grid*up_down_soil==spx && spy==up_y){
					// new soil
					custom_destroy_instance(spx,spy,oBlock);
					instance_create_layer(spx,spy,"Soils",oSoil);
					total_create++;
					// new road
					custom_destroy_instance(spx-sp_grid,spy,oBlock);
					instance_create_layer(spx-sp_grid,spy,"Roads",oH_Road);
					custom_destroy_instance(spx,spy-sp_grid,oBlock);
					instance_create_layer(spx,spy-sp_grid,"Roads",oH_Road);
					custom_destroy_instance(spx-sp_grid,spy-sp_grid,oBlock);
					instance_create_layer(spx-sp_grid,spy-sp_grid,"Roads",oH_Road);
				}
			}
		}
	}
	
	*/
	
	// initialize mp grid
	mp_grid_clear_all(global.rmGrid);
	global.rmGrid = mp_grid_create(0,0,room_width/16, room_height/16, 16, 16);
	mp_grid_add_instances(global.rmGrid, oSoil, true);
	mp_grid_add_instances(global.rmGrid, oBlock, true);
	
	if(total_create == prev_total + 8){
		soil_layer++;
		up_y -= (sp_grid*2);
		down_y += (sp_grid*2);
		
		prev_total = total_create;
		total_create = 0;
		up_down_soil+=2;
		side_soil += 2;
	}

}

if(soil_create){
	go_go = true;
	soil_create = false;
}