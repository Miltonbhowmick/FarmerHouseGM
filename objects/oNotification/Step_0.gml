/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)){
	AttackCount=1;
	EnemyCount=0;
	// cut 33% faster after killing enemy
	
	GameManager.tree_cut_time = GameManager.init_cut_time - floor(GameManager.init_cut_time*33/100);
	
	// back to rMain room
	room_goto(rMain);
}