/// @description Insert description here
// You can write your code in this editor


for(var i=0; i<irandom_range(1,2); i+=1){
	var cloud_x = irandom_range(70, room_width-70);
	var cloud_y = irandom_range(480,850);
	
	
	if( ! scr_check_in_array(cloud_list_x, cloud_x) && ! scr_check_in_array(cloud_list_y, cloud_y)){
		instance_create_depth(cloud_x, cloud_y, cloud_depth, objCloud);
	}
	
	ds_list_add(cloud_list_x, cloud_x);
	ds_list_add(cloud_list_y, cloud_y);
	
	cloud_depth -= 1; //places each new cloud on the screen
	cloud_count += 1; //counts # of total clouds on screen
}
