

lootButtonHelper(6,14);
if(y<145)
{
	
		 
		 
	
		
		GameManager.lootIndexSet1=14;
	   	   
		if(instance_exists(oLoot1)){
	   oLoot1.image_index=6;
	   }
	   if(instance_exists(oLoot2)){
	   oLoot2.image_index=6;
	   }
	   if(instance_exists(oLoot3)){
	   oLoot3.image_index=6;
	   }
	   if(instance_exists(oLoot4)){
	   oLoot4.image_index=6;
	   }
	   if(instance_exists(oLoot5)){
	   oLoot5.image_index=6;
	   }


     if(GameManager.drawButtonControl==false)
	instance_create_layer(195,160,"GUI",oLootBox);
}