function on_click(){
	if(text == "1"){
		if(GameManager.CollectTrees>=GameManager.stack_loaded_range){
			GameManager.transport_call = true;
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
			if(instance_number(oFarmer)){
				var _x = GameManager.FarmerPosition.x-10;
				var _y = GameManager.FarmerPosition.y;
			}
			else{
				var _x = GameManager.FarmerPosition.x+10;
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
		show_debug_message("Show Instruction");
		
	}
	else if(text =="Resume"){
		room_goto_next();
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