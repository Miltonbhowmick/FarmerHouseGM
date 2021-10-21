/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oLootBtnDress)<15 || distance_to_object(oLootBtnDagger)<15||
          distance_to_object(oLootBtnGloves)<15 ||distance_to_object(oLootBtnShoes)<15)
{
	instance_destroy();
}

if(distance_to_object(oLootPoint1)<18)
{
	
	  if( instance_exists(oLootBtnDress) && instance_exists(oLootBtnDagger)
	 && instance_exists(oLootBtnGloves) && instance_exists(oLootBtnShoes) ){
		 image_index=1;
	     oLootBtnDress.image_index=0;
	     oLootBtnDagger.image_index=0;
	     oLootBtnShoes.image_index=0;
	 }
	 
	   GameManager.lootIndexSet1=13;
	 
	   if(instance_exists(oLoot1)){
	   oLoot1.image_index=2;
	   }
	   if(instance_exists(oLoot2)){
	   oLoot2.image_index=2;
	   }
	   if(instance_exists(oLoot3)){
	   oLoot3.image_index=2;
	   }
	   if(instance_exists(oLoot4)){
	   oLoot4.image_index=2;
	   }
	   if(instance_exists(oLoot5)){
	   oLoot5.image_index=2;
	   }
	   
	   
    instance_create_layer(350,100,"GUI",oLootBox);
	
	
	
}