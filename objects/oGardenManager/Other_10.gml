/// @description Tree, Rocks, Flowers
var xx,yy; 
var i=0;
random_set_seed(GameManager.seed_value);
while(i<environment_occupied){
	
	var _choose=choose("tree","flower","small_stone");
	if(_choose="tree"){
		xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
		yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		
		if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
		{
			instance_create_layer(xx,yy,"Trees", oDungeonTree);
			free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
			i+=3;
		}
		
	}
	if(_choose="flower"){

		xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
		yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
		{
			instance_create_layer(xx,yy,"Flowers", oFlower);
			free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
			i+=3;
		}
	}
	
	if(_choose="small_stone"){

		xx = (floor((irandom_range(0,room_width)/cell_size)) * cell_size);
		yy = (floor((irandom_range(0,room_height)/cell_size)) * cell_size);
		if(free_cell[# floor(xx/cell_size), floor(yy/cell_size)]==0)
		{
			instance_create_layer(xx,yy,"Stones", oSmallStone);
			free_cell[# floor(xx/cell_size), floor(yy/cell_size)] = 1;
			i+=3;
		}
	}
	
}
tree_percentage =instance_number(oDungeonTree); 
flower_percentage = instance_number(oFlower);
stone_percentage = instance_number(oSmallStone);