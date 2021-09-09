/// @description Insert description here
// You can write your code in this editor



path_end();

	
instance_destroy();



sprite_set_speed(sMovingRoad,0,10);

if(c<3){
	if(c=2)
{
	instance_create_layer(x,y,"Enemies",oEnemyBoss);
}
 if(c<2){	
 instance_create_layer(x,y-200,"Enemies",oEnemySoldier);
 }
 c++;


}


