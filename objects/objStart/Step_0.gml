/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_space)){
	room_goto_next();
	audio_stop_all();
	audio_play_sound(snd_jump, 10 ,false);
	show_debug_message("START GAME");
	
}