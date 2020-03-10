/// @description Insert description here
// You can write your code in this editor

//limit cloud count to 30
if(alarm[0] == -1 && cloud_count < 15){ //alarm[0] == -1 is necessary so we don't continuously reset alarm timer
	alarm[0] = 80;
}

//remove clouds that are too far away
with(objCloud){
	var player_high = min(inst_361EDD44.y, inst_AC7B74C.y);
	
	if(y-player_high > 525 ||  y-player_high < -525){
			instance_destroy(id);
			scr_remove_cloud(id);
			
			//create some more clouds to replace
			if(inst_361EDD44.alive && inst_AC7B74C.alive){
			var cloud_x = irandom_range(30, room_width-30);
			var cloud_y = irandom_range(camera_get_view_y(view_camera[0])-70,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 150);
	
	
			if( ! scr_check_in_array(objGameManager.cloud_list_x, cloud_x) && ! scr_check_in_array(objGameManager.cloud_list_y, cloud_y)){
				instance_create_depth(cloud_x, cloud_y, objGameManager.cloud_depth, objCloud);
			}
	
			ds_list_add(objGameManager.cloud_list_x, cloud_x);
			ds_list_add(objGameManager.cloud_list_y, cloud_y);
	
			objGameManager.cloud_depth -= 1; //places each new cloud on the screen
			objGameManager.cloud_count += 1; //counts # of total clouds on screen
			objGameManager.cloud_count -= 1;

			}
	}
	show_debug_message("CLOUD TOO FAR AWAY DELETING NOW");
}

if(score_1 >= 10 || score_2 <= -10 && room != room2){
	global.winner = "RED";
	room_goto_next();
}
if(score_2 >= 10 || score_1 <= -10 && room != room2){
	global.winner = "GREEN";
	room_goto_next();
}


if(keyboard_check(ord("3")) && keyboard_check(ord("6"))){
	game_restart();	
}

show_debug_message("CLOUD #: "+ string(cloud_count));

