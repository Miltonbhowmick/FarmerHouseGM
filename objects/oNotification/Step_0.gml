/// @description Action


if(mouse_check_button_pressed(mb_left)){
	AttackCount=1;
	EnemyCount=0;
	// cut 33% faster after killing enemy
	show_message(GameManager.tree_cut_time);
	GameManager.tree_cut_time = GameManager.init_cut_time - floor(GameManager.init_cut_time*33/100);
	show_message(GameManager.tree_cut_time);
	// back to rMain room
	room_goto(rMain);
}