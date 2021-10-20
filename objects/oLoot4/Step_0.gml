if(distance_to_object(oLoot1)<20 || distance_to_object(oLoot2)<20||
          distance_to_object(oLoot3)<20 ||distance_to_object(oLoot4)<20
		  ||distance_to_object(oLoot5)<20)
{
	instance_destroy();
}



if(distance_to_object(oLootPoint3)<25){
		image_xscale=1.5;
		image_yscale=1.5;
		GameManager.loot_Text="";
		GameManager.setcolor=c_black;
		
		if(GameManager.lootIndexSet1==11){
			GameManager.loot_Text="This is Ash Color Dress";
	        GameManager.loot_Text2="Buying Price $90";
		}
		if(GameManager.lootIndexSet1==12){
			GameManager.loot_Text="This is Ash Color Dagger";
	        GameManager.loot_Text2="Buying Price $90";
		}
		if(GameManager.lootIndexSet1==13){
			GameManager.loot_Text="This is Ash Color Gloves";
	        GameManager.loot_Text2="Buying Price $90";
		}
		if(GameManager.lootIndexSet1==14){
			GameManager.loot_Text="This is Ash Color Shoes";
	        GameManager.loot_Text2="Buying Price $90";
		}
		
}
