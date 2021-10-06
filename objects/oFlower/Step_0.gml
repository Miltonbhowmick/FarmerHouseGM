/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oFarmerFlower)<5)
		{
			
			//ds_grid_clear(rm_road_path, 0);
			if(GardenManager.cutFlower=="start_farmers"){
				path_end();
				if(alarm[0]<0){
					alarm[0] = room_speed *2;
				}
				
			}			   
			     
		}