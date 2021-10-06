/// @description 


if(distance_to_object(oFarmerStone)<5)
		{
			
			
			if(GardenManager.cutDungeonTree=="start_farmers"){
				path_end();
				if(alarm[0]<0){
					alarm[0] = room_speed *2 ;
				}
				
			}
		}