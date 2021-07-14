function on_click(){
	if(text=="1"){
		GameManager.Plant = !GameManager.Plant;
		show_debug_message("Plant");	
	}	
	if(text=="2"){
		GameManager.Cut = !GameManager.Cut;
		show_debug_message("Cut");	
	}	
	if(text=="3"){
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
}