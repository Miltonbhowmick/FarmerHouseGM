/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oLootShoes)<20)
{
	instance_destroy();
}


if(x<0){

  GameManager.lootIndexSet4++;
  instance_destroy();
}

if(x<116)
{
	
	
	image_index=GameManager.lootIndexSet4;
	
}

if(x>=116 && x<232)
{
	image_index=GameManager.lootIndexSet4+1;
}


if(x>=232 && x<348)
{
	
	

	
	image_xscale=1.5;
    image_yscale=1.5; 
	image_index=GameManager.lootIndexSet4+2;
	
	
	var checkindex=oLootShoes.image_index;
	
	if(checkindex==0)
	{
	GameManager.loot_Text="This is Yellow Color Shoes";
	GameManager.loot_Text2="Buying Price $50";
	}
	if(checkindex==1)
	{
	GameManager.loot_Text="This is Blue Color Shoes";
	GameManager.loot_Text2="Buying Price $60";
	}
	if(checkindex==2)
	{
	GameManager.loot_Text="This is Sky Blue Color Shoes";
	GameManager.loot_Text2="Buying Price $55";
	}
	if(checkindex==3)
	{	
	GameManager.loot_Text="This is Purple Color Shoes";
	GameManager.loot_Text2="Buying Price $65";
	}
	if(checkindex==4)
	{
	GameManager.loot_Text="This is Ash Color Shoes";
	GameManager.loot_Text2="Buying Price $70";
	}
	
	
	
}
if(x>=348 && x<464)
{
	image_index=GameManager.lootIndexSet4+3;
}
if(x>=464 && x<670)
{
	image_index=GameManager.lootIndexSet4+4;
}

if(x>670){

  //GameManager.lootIndexSet3--;
  instance_destroy();
}