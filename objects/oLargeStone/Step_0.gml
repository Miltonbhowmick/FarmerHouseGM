/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oFarmer)<5)
		{
			
			if(GardenManager.collecStone=="start_farmers"){
				path_end()
				if(alarm[0]<0){
					alarm[0] = room_speed *2;
				}
				
			}
		}