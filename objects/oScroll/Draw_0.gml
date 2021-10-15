/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(yy,-250,"GUI",oLootDress);

	
	
	
for(i = 1 ; i <=25 ; i++){
	
	GameManager.lootIndexSet1= i mod 5;
	GameManager.lootIndexSet2= i mod 5;
	GameManager.lootIndexSet3= i mod 5;
	GameManager.lootIndexSet4= i mod 5;
	
	
	
	yy =(((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data(oScrollable) ;
	
	
	

	if(GameManager.lootdress==true){
		
	   if(instance_exists(oLootDagger))
	   {
		
			instance_destroy(oLootDagger);
		}
		
	   if(instance_exists(oLootGloves))
	   {
		
			instance_destroy(oLootGloves);
		}
	   if(instance_exists(oLootShoes))
	   {
		
			instance_destroy(oLootShoes);
		}
		
		
	   instance_create_layer(yy-1228,210,"GUI",oLootDress);
	}
	
	
	
	if(GameManager.lootdagger==true){
		
		if(instance_exists(oLootDress))
	   {
		
			instance_destroy(oLootDress);
		}
		
	   if(instance_exists(oLootGloves))
	   {
		
			instance_destroy(oLootGloves);
		}
	   if(instance_exists(oLootShoes))
	   {
		
			instance_destroy(oLootShoes);
		}
		
		
	    instance_create_layer(yy-1228,210,"GUI",oLootDagger);
	}
	
	
	if(GameManager.lootgloves==true){
		
		if(instance_exists(oLootDagger))
	   {
		
			instance_destroy(oLootDagger);
		}
		
	   if(instance_exists(oLootDress))
	   {
		
			instance_destroy(oLootDress);
		}
	   if(instance_exists(oLootShoes))
	   {
		
			instance_destroy(oLootShoes);
		}
		
		
	    instance_create_layer(yy-1228,210,"GUI",oLootGloves);
	}
	
	
	
	if(GameManager.lootshoes==true){
		
		if(instance_exists(oLootDagger))
	   {
		
			instance_destroy(oLootDagger);
		}
		
	   if(instance_exists(oLootDress))
	   {
		
			instance_destroy(oLootDress);
		}
	   if(instance_exists(oLootGloves))
	   {
		
			instance_destroy(oLootGloves);
		}
		
		
	    instance_create_layer(yy-1228,210,"GUI",oLootShoes);
	}
	
	
	 
	
   
}

    instance_create_layer(58,256,"GUI",oLootPoint1);
	instance_create_layer(174,256,"GUI",oLootPoint2);
	instance_create_layer(290,256,"GUI",oLootPoint3);
	instance_create_layer(406,256,"GUI",oLootPoint4);
	instance_create_layer(521,256,"GUI",oLootPoint5);
	
	
scr_scrollable_set_Last_Item_Position(oScrollable, yy + (btn_height / 2) );


