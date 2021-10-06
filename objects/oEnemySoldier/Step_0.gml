
if (distance_to_object(oFarmer)<15)
    {

	

   path_end();
   GameManager.FarmerSpeed=0;
	 sprite_set_speed(sMovingRoad,0,1);  
	oEnemySoldier.x=oEnemySoldier.x+20;
	oEnemySoldier.y=oEnemySoldier.y-40;
	move_towards_point(oFarmer.x,oFarmer.y,2);
	
   if(GameManager.AttackCount=5 || GameManager.AttackCount=10 || GameManager.AttackCount=15)
   {
	   if(GameManager.AttackCount=15)
	   {
	   GameManager.FarmerSpeed=.1;
	   sprite_set_speed(sMovingRoad,1,1);
	   }
    instance_destroy();
   }



	 if(GameManager.EnemyCount<2){	
		 if(GameManager.AttackCount=5 || GameManager.AttackCount=10){
			 GameManager.FarmerSpeed=.1;
			 sprite_set_speed(sMovingRoad,1,1);
	 instance_create_layer(x,y-200,"Enemies",oEnemySoldier);
	 GameManager.EnemyCount++;
		 }
	 }
 
	GameManager.AttackCount++;


	
 }
