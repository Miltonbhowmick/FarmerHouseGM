// @func on_click()
function on_click(){
	if(text == "1"){
		if(GameManager.CollectTrees>=GameManager.stack_loaded_range){
			GameManager.transport_call = true;
			show_message(GameManager.stack_loaded_range);
		}
	}
	else if(text=="2"){
		GameManager.Plant = !GameManager.Plant;
		if(GameManager.Plant==true){
			_image_index = 1;
			btn_x = floor(mouse_x/GameManager.sp_grid)*GameManager.sp_grid;
			btn_y = floor(mouse_y/GameManager.sp_grid)*GameManager.sp_grid;
		}
		else{
			_image_index = 0;
		}
		show_debug_message("Plant");
	}	
	else if(text=="3"){
		GameManager.Cut = !GameManager.Cut;
		if(GameManager.Cut==true){
			_image_index = 1;
		}
		else{
			_image_index = 0;
		}
		show_debug_message("Cut");
	}	
	else if(text=="4"){
		if(GameManager.Farmer>0){
			if(instance_number(oFarmer)==2){
				var _x = GameManager.FarmerPosition.x-20;
				var _y = GameManager.FarmerPosition.y;
			}
			else if(instance_number(oFarmer)==1){
				var _x = GameManager.FarmerPosition.x;
				var _y = GameManager.FarmerPosition.y;
			}
			else{
				var _x = GameManager.FarmerPosition.x+20;
				var _y = GameManager.FarmerPosition.y;
			}	
			var _farmer = instance_create_layer(_x,_y,"Farmers",oFarmer);
			with(_farmer){
				_farmer.inst_object = _farmer;
			}
			
			GameManager.Farmer--;
		}
		show_debug_message("Farmer");	
	}
	else if(text=="5"){
		
		GameManager.start_work = !GameManager.start_work;
		if(GameManager.start_work==true){
			GardenManager.cutFlower="start_farmers";
			GardenManager.collecStone="start_farmers";
			GardenManager.cutDungeonTree="start_farmers";
			_image_index = 1;
			with (oButton){
				if(text=="6"){
					_image_index = 0;
				}
			}
			GameManager.stop_work = false;
		}
		else{
			_image_index = 0;
		}
	}
	else if(text=="6"){
		GameManager.stop_work = !GameManager.stop_work;
		if(GameManager.stop_work==true){
			GardenManager.cutFlower="stop_farmers";
			GardenManager.collecStone="stop_farmers";
			GardenManager.cutDungeonTree="stop_farmers";
			_image_index = 1;
			
			GameManager.start_work = false;
		}
		else{
			_image_index = 0;
		}
	}
	


/////////////////////////////////////////////////////////////////////////////////////////
	

	else if(text=="11")
	{
		     GameManager.instruction_room_main=false;
	       // GameManager.draw_permission=true;
			GameManager.loot_Text="";
			GameManager.loot_Text2="";
			instance_destroy(oLootBox);
			instance_destroy(oGardenView);
			GameManager.drawButtonControl=false;
			
			room_goto(rGarden);
	}
	
	/////////////////////////////////////////////////////////////////
	
	

	
	
	//start menu
	else if(text =="Resume"){
		room_goto(rMain);
	}
	else if(text =="New Game"){
		if(file_exists("savedgame.save")){
			file_delete("savedgame.save");
		}
		room_goto(rMain);
	}
	else if(text == ""){
		// pending*
	}
	else if(text == "Exit"){
		game_end();
	}
	
	
	
		
		 
}