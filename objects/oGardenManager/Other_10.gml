/// @description Tree, Rocks, Flowers

var i=0;
while(i<environment_occupied){
	randomize();
	var xx = (irandom_range(0,room_width)/cell_size) * cell_size;
	var yy = (irandom_range(0,room_height)/cell_size) * cell_size;
	
	if(!position_meeting(x,y,oLargeTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower)){
		instance_create_layer(xx,yy,"Flowers", oFlower);
		i++;
	}
	
	randomize();
	xx = (irandom_range(0,room_width)/cell_size) * cell_size;
	yy = (irandom_range(0,room_height)/cell_size) * cell_size;

	if(!position_meeting(x,y,oLargeTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower)){
		instance_create_layer(xx,yy,"Flowers", oLargeTree);
		i++;
	}
			
	randomize();
	xx = (irandom_range(0,room_width)/cell_size) * cell_size;
	yy = (irandom_range(0,room_height)/cell_size) * cell_size;

	if(!position_meeting(x,y,oLargeTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower)){
		instance_create_layer(xx,yy,"Flowers", oSmallStone);
		i++;
	}
}
	