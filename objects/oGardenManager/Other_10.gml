/// @description Tree, Rocks, Flowers

var i=0;
while(i<environment_occupied){
	randomize();
	var xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	var yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Trees", oDungeonTree);
		i+=3;
	}
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Flowers", oFlower);
		i+=3;
	}
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Stones", oSmallStone);
		i+=3;
	}	
}

while(i<environment_occupied){
	randomize();
	var xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	var yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Trees", oDungeonTree);
		i+=3;
	}
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Flowers", oFlower);
		i+=3;
	}
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(!position_meeting(xx,yy,oGardenGate) && !position_meeting(x,y,oDungeonTree) && !position_meeting(x,y,oSmallStone) && !position_meeting(x,y,oFlower))
	{
		instance_create_layer(xx,yy,"Stones", oSmallStone);
		i+=3;
	}	
}