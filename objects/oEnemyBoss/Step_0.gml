if(GameManager.AttackCount=15)
{
	path_start(pEnemySoldier,1,path_action_stop,true);	
		

}
	

if (distance_to_object(oFarmer)<15)
{
	
    path_end();
	GameManager.FarmerSpeed=0;
	
	audio_play_sound(snd_Fight,10,false); 
	
	oEnemyBoss.x=oEnemyBoss.x+20;
	oEnemyBoss.y=oEnemyBoss.y-60;
	sprite_set_speed(sMovingRoad,0,10);
	move_towards_point(oFarmer.x,oFarmer.y,1);
	if(GameManager.AttackCount=25)
	{
		instance_destroy();
		sprite_set_speed(sMovingRoad,0,10);

		var _x = camera_get_view_width(view_camera[0])/2;
		var _y = camera_get_view_height(view_camera[0])/2;
	
		instance_create_layer(_x,_y,"Notification",oNotification);
	}


  GameManager.AttackCount++;
 }
 
