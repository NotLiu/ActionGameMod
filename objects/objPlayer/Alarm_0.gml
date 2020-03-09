/// @description Insert description here
// You can write your code in this editor
y = room_height + sprite_height - 90;
x = irandom_range(50, room_width-50);

audio_play_sound(snd_revive, 10, false);
y_vel = -25;
x_vel = irandom_range(-6,6);

out = false;
alive = true;

/*
if(alarm[1] == -1){
	alarm[1] = 40;
}
*/