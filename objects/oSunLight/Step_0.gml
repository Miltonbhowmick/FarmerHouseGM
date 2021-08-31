/// @description 

// inc/dec opacity
if(GameManager.droughting && !GameManager.raining){
	if(image_alpha>=1){
		drought_time = true;
		GameManager.tree_cut_time -= floor(GameManager.tree_cut_time*30/100);
		GameManager.tree_grow_time += floor(GameManager.tree_grow_time*30/100);
		if(alarm[0]<0){
			alarm[0] = room_speed * 10;
		}
	}
	else{
		image_alpha+=fade_in_speed;
	}
}
if(GameManager.raining){
	if(image_alpha>0){
		image_alpha-=fade_out_speed;
	}
}

