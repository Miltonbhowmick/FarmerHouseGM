function on_click(){
	if(text=="1"){
		GameManager.Plant = !GameManager.Plant;
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
		global.rmGrid = mp_grid_create(0,0,room_width, room_height, 16, 16);
		mp_grid_add_instances(global.rmGrid, oSoil, true);
		mp_grid_add_instances(global.rmGrid, oBlock, true);

	}
}