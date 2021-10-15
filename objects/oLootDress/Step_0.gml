


if(distance_to_object(oLootDress)<20)
{
	instance_destroy();
}


if(x<0){

  GameManager.lootIndexSet1++;
  instance_destroy();
}

if(x<116)
{
	
	
	image_index=GameManager.lootIndexSet1;
	
}

if(x>=116 && x<232)
{
	image_index=GameManager.lootIndexSet1+1;
}


if(x>=232 && x<348)
{
	
	

	
	image_xscale=1.5;
    image_yscale=1.5; 
	image_index=GameManager.lootIndexSet1+2;
	
	var checkindex=oLootDress.image_index
	
	if(checkindex==0)
	{
	GameManager.loot_Text="This is Yellow Color Dress";
	GameManager.loot_Text2="Buying Price $50";
	}
	if(checkindex==1)
	{
	GameManager.loot_Text="This is Blue Color Dress";
	GameManager.loot_Text2="Buying Price $60";
	}
	if(checkindex==2)
	{
	GameManager.loot_Text="This is Purple Color Dress";
	GameManager.loot_Text2="Buying Price $55";
	}
	if(checkindex==3)
	{	
	GameManager.loot_Text="This is Sky Blue Color Dress";
	GameManager.loot_Text2="Buying Price $65";
	}
	if(checkindex==4)
	{
	GameManager.loot_Text="This is Ash Color Dress";
	GameManager.loot_Text2="Buying Price $70";
	}
	
	
	
	
}
if(x>=348 && x<464)
{
	image_index=GameManager.lootIndexSet1+3;
}
if(x>=464 && x<670)
{
	image_index=GameManager.lootIndexSet1+4;
}

if(x>670){

  
  instance_destroy();
}

/*
if(place_meeting(x, y, oLootPoint3)){
   
  image_index=GameManager.lootIndexSet1;

 image_xscale=1.5;
 image_yscale=1.5;
  
 // GameManager.loot_Text=GameManager.lootIndexSet1;
  //GameManager.lootIndexSet1--;
  
  
  
}


if(distance_to_object(oLootPoint1)<30)
{
	image_index=GameManager.lootIndexSet1-2;
}
if(distance_to_object(oLootPoint2)<30)
{
	image_index=GameManager.lootIndexSet1-1;
}
if(distance_to_object(oLootPoint4)<35)
{
	image_index=GameManager.lootIndexSet1+1;
}
if(distance_to_object(oLootPoint5)<35)
{
	image_index=GameManager.lootIndexSet1+2;
}
*/

