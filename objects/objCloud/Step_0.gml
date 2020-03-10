/// @description Insert description here
// You can write your code in this editor

//timer increase size
if(clouds[curr_sprite] != sprite3 && alarm[0] == -1){
	alarm[0] = irandom_range(30,100);
}

if(alarm[1] == -1){
	alarm[1] = 1000;	
}

show_debug_message("x "+string(x));