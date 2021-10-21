/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(yy,-250,"GUI",oLootDress);

	
	
if(GameManager.draw_permission==false){	
for(i = 1 ; i <=5 ; i++){
	
	mv= i mod 5;
	
	
	
	xx =(((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data(oScrollable) ;
	
    
	if(mv==1)
     instance_create_layer(xx-50,250,"GUI",oLoot1);
	 if(mv==2)
     instance_create_layer(xx-50,250,"GUI",oLoot2);
	 if(mv==3)
     instance_create_layer(xx-50,250,"GUI",oLoot3);
	 if(mv==4)
     instance_create_layer(xx-50,250,"GUI",oLoot4);
	 if(mv==0)
     instance_create_layer(xx-50,250,"GUI",oLoot5);

   
}

   
	instance_create_layer(290,256,"GUI",oLootPoint3);
	
	
	
	
	
scr_scrollable_set_Last_Item_Position(oScrollable, xx + (btn_height / 2) );


}

