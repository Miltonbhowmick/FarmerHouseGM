

if(distance_to_object(oLootButton)<15)
{
	instance_destroy();
}


if(y<-32){

  GameManager.lootIndexSet5++;
  instance_destroy();
}

if(y<24)
{
	
	
	image_index=GameManager.lootIndexSet5;	
	
	
}

if(y>=24 && y<90)
{
	
	image_index=GameManager.lootIndexSet5+1;
	
	image_xscale=1.15;
    image_yscale=1.15; 

	
	
	var checkindex=oLootButton.image_index;
	
	if(checkindex==1)
	{
            destroyLootButtonIndex(true,false,false,false);
			GameManager.lootIndexSet1=0;
	}
	if(checkindex==2)
	{
		    destroyLootButtonIndex(false,true,false,false);
			GameManager.lootIndexSet2=0;
	
	}
	if(checkindex==3)
	{
	       destroyLootButtonIndex(false,false,true,false);
			GameManager.lootIndexSet3=0;
			
	}
	if(checkindex==0)
	{	
			destroyLootButtonIndex(false,false,false,true);
			GameManager.lootIndexSet4=0;
	}
	
}


if(y>=90 && y<156)
{
	
	    
		image_index=GameManager.lootIndexSet5+2;
		
}
if(y>=156 && y<222)
{
	
	image_index=GameManager.lootIndexSet5+3;
	GameManager.draggingValue=y;
}


if(y>335){

  //GameManager.lootIndexSet3--;
  instance_destroy();
}