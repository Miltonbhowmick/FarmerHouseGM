/// @description Insert description here
// You can write your code in this editor
if(GameManager.draw_permission==false){

for(i = 1 ; i <=5 ; i++){
	
	mv= i mod 5;
	
	yy = (((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data1(oScrollable1) ;
	
	
	 // draw_sprite(sLootButton,i,590,yy-308);
	 if(mv==1)
     instance_create_layer(600,yy,"GUI",oLootBtnDress);
	 if(mv==2)
     instance_create_layer(600,yy,"GUI",oLootBtnDagger);
	 if(mv==3)
     instance_create_layer(600,yy,"GUI",oLootBtnGloves);
	 if(mv==4)
     instance_create_layer(600,yy,"GUI",oLootBtnShoes);
	 if(mv==0)
     instance_create_layer(600,yy,"GUI",olootExtraBtn);
   
	
	
}

instance_create_layer(600,168,"GUI",oLootPoint1);

scr_scrollable_set_Last_Item_Position1(oScrollable1 , yy + (btn_height / 2) );

}
