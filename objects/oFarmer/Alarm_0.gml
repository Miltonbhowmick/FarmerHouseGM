//show_message("aisee");
audio_play_sound(snd_Destroy,10,false);
GameManager.CollectTrees++;
ck=true;
show_message(instance_exists(inst_large_tree));
instance_destroy(inst_large_tree);
