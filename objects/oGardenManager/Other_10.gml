/// @description Tree, Rocks, Flowers
var xx,yy; 
var i=0;
while(i<tree_percentage){
	randomize();
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		
	if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
	{
		instance_create_layer(xx,yy,"Trees", oDungeonTree);
		free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
		i+=3;
	}
}
i=0;
while(i<flower_percentage){
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
	{
		instance_create_layer(xx,yy,"Flowers", oFlower);
		free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
		i+=3;
	}
}
i=0;
while(i<stone_percentage){
	xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
	yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
	if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
	{
		instance_create_layer(xx,yy,"Stones", oSmallStone);
		free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
		i+=3;
	}
	
}