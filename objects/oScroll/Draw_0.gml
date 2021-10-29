/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(yy,-250,"GUI",oLootDress);

	
	
if(GameManager.draw_permission==false){	
for(i = 1 ; i <=5 ; i++){
	
	mv= i mod 5;
	
	
	
	xx =(((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data(oScrollable) ;
	
    
	if(mv==1)
     instance_create_layer(65,xx,"GUI",oLoot1);
	 if(mv==2)
     instance_create_layer(65,xx,"GUI",oLoot2);
	 if(mv==3)
     instance_create_layer(65,xx,"GUI",oLoot3);
	 if(mv==4)
     instance_create_layer(65,xx,"GUI",oLoot4);
	 if(mv==0)
     instance_create_layer(65,xx,"GUI",oLoot5);
	 
	 xx1 =(70* i);
	 instance_create_layer(32,xx1-35,"GUI",oLootLine);
	 instance_create_layer(92,xx1-35,"GUI",oLootLine);
	 instance_create_layer(575,xx1-35,"GUI",oLootLine);
	 instance_create_layer(635,xx1-35,"GUI",oLootLine);

   
}

   
	instance_create_layer(65,168,"GUI",oLootPoint3);
	
	
	
	
	
	
	
	
scr_scrollable_set_Last_Item_Position(oScrollable, xx + (btn_height / 2) );


}

