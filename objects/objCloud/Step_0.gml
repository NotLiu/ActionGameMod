/// @description Insert description here
// You can write your code in this editor

//timer increase size
if(clouds[curr_sprite] != sprite3 && alarm[0] == -1){
	alarm[0] = irandom_range(30,100);
}

if(alarm[1] == -1 && room != room1 && room != room2){
	alarm[1] = 1000;	
}

show_debug_message("x "+string(x));

/*
if(room != room1 && room != room2){
	if(inst_361EDD44.out == 1 && inst_AC7B74C.out == 1){
		show_debug_message("eowinefoiwnefowienfwoeifnweoifnweofiwnefoiwnefowienfwoeinweofn");
		instance_destroy(id);
	}
}
*/