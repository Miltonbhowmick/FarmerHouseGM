/// @description 

if (distance_to_object(oFarmer)<15)
    {

	

   path_end();
   FarmerSpeed=0;
	 sprite_set_speed(sMovingRoad,0,1);  
	oEnemySoldier.x=oEnemySoldier.x+20;
	oEnemySoldier.y=oEnemySoldier.y-40;
	move_towards_point(oFarmer.x,oFarmer.y,2);
	
   if(AttackCount=5 || AttackCount=10 || AttackCount=15)
   {
	   if(AttackCount=15)
	   {
	   FarmerSpeed=.1;
	   sprite_set_speed(sMovingRoad,1,1);
	   }
    instance_destroy();
   }



 if(EnemyCount<2){	
	 if(AttackCount=5 || AttackCount=10){
		 FarmerSpeed=.1;
		 sprite_set_speed(sMovingRoad,1,1);
 instance_create_layer(x,y-200,"Enemies",oEnemySoldier);
 EnemyCount++;
	 }
 }
 
AttackCount++;


	
 }
	

	

/*

// destroy
if(life>=3){
	instance_destroy();
	GameManager.number_enemy_soldier--;
}
// avoid overlapping
if(distance_to_object(oFarmer)<farmer_range){
	
	move_towards_point(x,y,.5);
}
if(distance_to_object(oEnemySoldier)<enemy_range){
	
	move_towards_point(x,y,irandom_range(-2,2));
}

*/

