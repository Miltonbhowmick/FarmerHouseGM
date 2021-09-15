/// @description Tree, Rocks, Flowers

var i=0;
while(i<environment_occupied){
	randomize();
	var xx = irandom_range(0,room_width);
	var yy = irandom_range(0,room_height);
	
	if(!position_meeting(x,y,oLargeTree) || !position_meeting(x,y,oSmallStone)){
		instance_create_layer(xx,yy,"Flowers", oFlower);
	}
	i++;
	
	randomize();
	xx = irandom_range(0,room_width);
	yy = irandom_range(0,room_height);
	
	if(!position_meeting(x,y,oFlower) || !position_meeting(x,y,oSmallStone)){
		instance_create_layer(xx,yy,"Flowers", oLargeTree);
	}
	i++;
	
	randomize();
	xx = irandom_range(0,room_width);
	yy = irandom_range(0,room_height);
	
	if(!position_meeting(x,y,oFlower) || !position_meeting(x,y,oLargeTree)){
		instance_create_layer(xx,yy,"Flowers", oSmallStone);
	}
	i++;
}
	