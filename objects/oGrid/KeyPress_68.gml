/// @description Draw Pressed

if(room==rMain){
	if(timeToDraw){
		timeToDraw = false;	
	}
	else{
		timeToDraw = true;
	}
}

if(room==rGarden){
	garden_timeToDraw = !garden_timeToDraw;
}
