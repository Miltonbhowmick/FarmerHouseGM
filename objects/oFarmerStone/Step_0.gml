/// @description Insert description here
// You can write your code in this editor

 if(room==rCave)  
   {      if(GameManager.AttackCount>14 && GameManager.AttackCount<25)
	           move_towards_point(oEnemyBoss.x+100,oEnemyBoss.y,GameManager.FarmerSpeed*6); 
			   
   }


 if(room==rGarden)
 {
	  if(GardenManager.cutDungeonTree=="start_farmers" && instance_exists(oDungeonTree))
	    {	  
			 myPath = path_add();
			 if(mp_grid_path(rmGarden, myPath, x, y ,oDungeonTree.x, oDungeonTree.y, false))
				 {
			     path_start(myPath, 2, path_action_stop, true);
		 
				 }        
	    }
  
	  if(GardenManager.cutDungeonTree=="start_farmers" && !instance_exists(oDungeonTree) )
	    {
		        myPath = path_add();
		        mp_grid_path(rmGarden, myPath, x, y ,GardenManager._fx,GardenManager._fy+64, false)
				path_start(myPath, 2, path_action_stop, true);
		
		  }
  
	   //stop for 2 sec when collect stones
	   if(distance_to_object(oDungeonTree)<5 && GardenManager.cutDungeonTree=="start_farmers")
	          path_end();
		 
		 
	   //stop when click stop button pressed
	   if(GardenManager.cutDungeonTree=="stop_farmers")
	          path_end();
	 
	//mouse check
	   if(mouse_check_button_pressed(mb_right) )
		{
		
			GardenManager.cutDungeonTree="right_button_pressed";
		
			mp_grid_path(rmGarden, myPath, x, y ,mouse_x, mouse_y+32, false)
			path_start(myPath, 2, path_action_stop, true);	
		
		}
	
	
  
 }