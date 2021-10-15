/// @description Insert description here
// You can write your code in this editor

   
 if(room==rCave)  
   {      if(GameManager.AttackCount>14 && GameManager.AttackCount<25)
	           move_towards_point(oEnemyBoss.x,oEnemyBoss.y,GameManager.FarmerSpeed*9); 
			   
   }


if(room==rGarden)
{
	 
		 //going to pick flowers
	if(GardenManager.cutFlower=="start_farmers" && instance_exists(oFlower))
	  {
	  
	  
			  myPath = path_add();
			if(mp_grid_path(rmGarden, myPath, x, y ,oFlower.x, oFlower.y, false))
			{
				path_start(myPath, 2, path_action_stop, true);
			
			}
						
		
		
	  }
   
	   //moving to initial position after cut all the flowers
	if(GardenManager.cutFlower=="start_farmers" &&  !instance_exists(oFlower) )
	  {
		        myPath = path_add();
		        mp_grid_path(rmGarden, myPath, x, y ,GardenManager._fx,GardenManager._fy+32, false)
				path_start(myPath, 2, path_action_stop, true);
		
	  }
	  
	  
	  //back to main room
	  if(!instance_exists(oDungeonTree) && !instance_exists(oFlower) && !instance_exists(oLargeStone))
	  {
		  
		  earnPoints=floor((GardenManager.countFlower+GardenManager.countGardenTree+GardenManager.countStone)/3);
		  GameManager.coins=GameManager.coins+earnPoints
		  
		  // back to rMain room
	    // room_goto(rMain);
		  
	  }
	  
	  
	  
  
	  //end path after reach to flower and cutflower=1 for cut by start button
	if(distance_to_object(oFlower)<5  && GardenManager.cutFlower=="start_farmers")
	  {
	           path_end();
		  
	  }
	
	//stop when click stop button pressed
	if(GardenManager.cutFlower=="stop_farmers")
	  {
				 path_end();
			 
	  }
	
	
	//mouse check
	if(mouse_check_button_pressed(mb_right))
	 {
		
				GardenManager.cutFlower="right_button_pressed";
				with (oButton)
				{
						if(text=="6")
						{
							_image_index = 0;
							GameManager.stop_work = false;
						}
				}
				instance_create_layer(mouse_x,mouse_y,"Stones", oClickPoint);
				mp_grid_path(rmGarden, myPath, x, y ,oClickPoint.x, oClickPoint.y, false)
				path_start(myPath, 2, path_action_stop, true);
		
		
		
	  }
	
	//move again after 3 farmers meet together
	if(distance_to_object(oClickPoint)<5 && distance_to_object(oFarmerStone)<33 && distance_to_object(oFarmer)<17)
	
	  {   
				  
			   GardenManager.cutFlower="start_farmers";
			   GardenManager.cutDungeonTree="start_farmers";
			   GardenManager.collecStone="start_farmers";
				   
			   instance_destroy(oClickPoint);
				   
	  }
  
}