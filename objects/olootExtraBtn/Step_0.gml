



var dfo=GameManager.dfo;
if(y<11 || y>325)
{
    instance_destroy();	
}

if(y<90 || y>240)
{
	image_index++;
}

if(distance_to_object(oLootBtnDress)<dfo || distance_to_object(oLootBtnDagger)<dfo||
          distance_to_object(oLootBtnGloves)<dfo ||distance_to_object(oLootBtnShoes)<dfo
		  ||distance_to_object(olootExtraBtn)<dfo)
{
	instance_destroy();
}


if(distance_to_object(oLootPoint1)<dfo)
{
	
	 
		 
		 image_xscale=1.3;
		 image_yscale=1.3;
	     
	 
	 
	 
	  if(GameManager.drawButtonControl==false)   
    instance_create_layer(195,160,"GUI",oLootBox);
	
	
	
}