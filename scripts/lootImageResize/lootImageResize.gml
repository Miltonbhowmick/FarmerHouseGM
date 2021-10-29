
//Loot Button Operation
function lootButtonHelper(i_indx,l_indx){
	
var dfo=GameManager.dfo;
/*
if(y<11 || y>325)
{
    instance_destroy();	
}
*/
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


if(distance_to_object(oLootPoint1)<dfo+4)
{
	
     
	 
		 image_xscale=1.3;
		 image_yscale=1.3;
	     
	 
	 
	 GameManager.lootIndexSet1=l_indx;
	 
	   if(instance_exists(oLoot1)){
	   oLoot1.image_index=i_indx;
	   }
	   if(instance_exists(oLoot2)){
	   oLoot2.image_index=i_indx;
	   }
	   if(instance_exists(oLoot3)){
	   oLoot3.image_index=i_indx;
	   }
	   if(instance_exists(oLoot4)){
	   oLoot4.image_index=i_indx;
	   }
	   if(instance_exists(oLoot5)){
	   oLoot5.image_index=i_indx;
	   }
       
	   
	  if(GameManager.drawButtonControl==false)
       instance_create_layer(195,160,"GUI",oLootBox);
			
	
	
}
	
}


//lott Instances operation
function LootInstaceHelper(clr,txtColor){
	
var dfo=GameManager.dfo;
if(y<70 || y>250)
{
	image_index++;
}


if(distance_to_object(oLoot1)<dfo || distance_to_object(oLoot2)<dfo||
          distance_to_object(oLoot3)<dfo ||distance_to_object(oLoot4)<dfo
		  ||distance_to_object(oLoot5)<dfo)
{
	instance_destroy();
}	


if(distance_to_object(oLootPoint3)<dfo+4){
		image_xscale=1.5;
		image_yscale=1.5;
		GameManager.setcolor=txtColor;
		if(GameManager.lootIndexSet1==11){
			GameManager.loot_Text=string(clr)+ " Dress";
	       GameManager.loot_Text2="Buying Price $60";
		}
		if(GameManager.lootIndexSet1==12){
			
			GameManager.loot_Text=string(clr)+ " Dagger";
	        GameManager.loot_Text2="Buying Price $60";
		}
		if(GameManager.lootIndexSet1==13){
			GameManager.loot_Text=string(clr)+ " Gloves";
	        GameManager.loot_Text2="Buying Price $60";
		}
		if(GameManager.lootIndexSet1==14){
			GameManager.loot_Text=string(clr)+ " Shoes";
	        GameManager.loot_Text2="Buying Price $60";
		}

}


	
}


//draw all the text text and set text color
function lootDraw(){
	
	if(GameManager.drawButtonControl==false)
{
draw_set_color(c_white);
draw_line(116,80,265,80);
draw_set_color(GameManager.setcolor);
draw_set_font(f2);
draw_text(137, 50, GameManager.loot_Text);
draw_set_font(fMenu);
draw_text(137, 95, GameManager.loot_Text2);
}

}




