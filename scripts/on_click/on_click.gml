function on_click(){
	if(text=="1"){
		GameManager.Plant = !GameManager.Plant;
		if(GameManager.Plant==true){
			btn_x = floor(mouse_x/GameManager.sp_grid)*GameManager.sp_grid;
			btn_y = floor(mouse_y/GameManager.sp_grid)*GameManager.sp_grid;
			show_debug_message(string(place_meeting(mouse_x,mouse_y,oButton)));
		}
		show_debug_message("Plant");
	}	
	else if(text=="2"){
		GameManager.Cut = !GameManager.Cut;
		show_debug_message("Cut");	
	}	
	else if(text=="3"){
		if(GameManager.Farmer>0){
			var _x = GameManager.FarmerPosition.x;
			var _y = GameManager.FarmerPosition.y;
			var _farmer = instance_create_layer(_x,_y,"Farmers",oFarmer);
			with(_farmer){
				_farmer.inst_object = _farmer;
			}
			GameManager.Farmer--;
		}
		show_debug_message("Farmer");	
	}
	else if(text=="4"){
		show_debug_message("Add soil");
		GameManager.soil_create = true;
		
	}
	else if(text =="Start Menu"){
		room_goto_next();
	}
	else if(text == ""){
		// pending*
	}
	else if(text == "Exit"){
		game_end();
	}
}