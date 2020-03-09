/// @description Insert description here
// You can write your code in this editor

//limit cloud count to 30
if(alarm[0] == -1 && cloud_count < 30){ //alarm[0] == -1 is necessary so we don't continuously reset alarm timer
	alarm[0] = 70;
}

if(keyboard_check(ord("3")) && keyboard_check(ord("6"))){
	game_restart();	
}

show_debug_message("CLOUD #: "+ string(cloud_count));