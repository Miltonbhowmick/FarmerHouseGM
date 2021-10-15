if(distance_to_object(oLootDagger)<20)
{
	instance_destroy();
}


if(x<0){

  GameManager.lootIndexSet2++;
  instance_destroy();
}

if(x<116)
{
	
	
	image_index=GameManager.lootIndexSet2;
	
}

if(x>=116 && x<232)
{
	image_index=GameManager.lootIndexSet2+1;
}


if(x>=232 && x<348)
{
	
	

	
	image_xscale=1.5;
    image_yscale=1.5; 
	image_index=GameManager.lootIndexSet2+2;
	
	var checkindex=oLootDagger.image_index;
	
	if(checkindex==0)
	{
	GameManager.loot_Text="This is Yellow Color Dagger";
	GameManager.loot_Text2="Buying Price $50";
	}
	if(checkindex==1)
	{
	GameManager.loot_Text="This is Blue Color Dagger";
	GameManager.loot_Text2="Buying Price $60";
	}
	if(checkindex==2)
	{
	
	GameManager.loot_Text="This is Sky Blue Color Dagger";
	GameManager.loot_Text2="Buying Price $55";
	}
	if(checkindex==3)
	{	
	GameManager.loot_Text="This is Purple Color Dagger";
	GameManager.loot_Text2="Buying Price $65";
	}
	if(checkindex==4)
	{
	GameManager.loot_Text="This is Ash Color Dagger";
	GameManager.loot_Text2="Buying Price $70";
	}
	
	
	
}
if(x>=348 && x<464)
{
	image_index=GameManager.lootIndexSet2+3;
}
if(x>=464 && x<670)
{
	image_index=GameManager.lootIndexSet2+4;
}

if(x>670){

 // GameManager.lootIndexSet3--;
  instance_destroy();
}