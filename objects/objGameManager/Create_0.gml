/// @description Insert description here
// You can write your code in this editor

//commit project gms2 test

//resets randomizer seed, otherwise sed remains the same
randomize();

score_1 = 1;
score_2 = 1;

cloud_count = 0;
cloud_depth = 0;

//create around 5 clouds upon game creation.
cloud_list_x = ds_list_create();
cloud_list_y = ds_list_create();
for(i = 0; i < random_range(4,6); i++){
	var cloud_x = irandom_range(70, room_width-70);
	var cloud_y = irandom_range(480,850);
	
	while(scr_check_in_array(cloud_list_x, cloud_x) && scr_check_in_array(cloud_list_y, cloud_y)){
		//re-roll starting positions until clouds dont collide
		var cloud_x = irandom_range(70, room_width-70);
		var cloud_y = irandom_range(480,850);
		
	}
	
	if( ! scr_check_in_array(cloud_list_x, cloud_x) && ! scr_check_in_array(cloud_list_y, cloud_y)){
		instance_create_depth(cloud_x, cloud_y, cloud_depth, objCloud);
	}
	
	ds_list_add(cloud_list_x, cloud_x);
	ds_list_add(cloud_list_y, cloud_y);
	
	cloud_count += 1;
	cloud_depth -= 1;
	
}

/*create 2 players instances
for(i=0; i<2; i+=1){
	var player = instance_create_layer(irandom_range(50, room_width-50),irandom_range(400,940), "Instances", objPlayer);
	player.move_set = i;
}
*/
