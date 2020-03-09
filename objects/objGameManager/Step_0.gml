/// @description Insert description here
// You can write your code in this editor

//limit cloud count to 30
if(alarm[0] == -1 && cloud_count < 40){ //alarm[0] == -1 is necessary so we don't continuously reset alarm timer
	alarm[0] = 40;
}

//remove clouds that are too far away
with(objCloud){
	var player_high = min(inst_361EDD44.y, inst_AC7B74C.y);
	
	if(y-player_high > 600 ||  y-player_high < -600){
			instance_destroy(id);
			scr_remove_cloud(id);
			
			//create some more clouds to replace
			
			if(alarm[0] == -1 && objGameManager.cloud_count < 40){
				alarm[0] = 5;
			}

	}
	show_debug_message("CLOUD TOO FAR AWAY DELETING NOW");
}

if(keyboard_check(ord("3")) && keyboard_check(ord("6"))){
	game_restart();	
}

show_debug_message("CLOUD #: "+ string(cloud_count));