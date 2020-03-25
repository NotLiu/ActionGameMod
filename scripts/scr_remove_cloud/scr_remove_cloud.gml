var cloud = argument0; //cloud object colliding with

var cloud_x = objGameManager.cloud_list_x;
var cloud_y = objGameManager.cloud_list_y;

for(var i = 0; i<array_length_1d(cloud_x); i += 1){
		if(cloud.x == cloud_x[i]){
			ds_list_delete(cloud_x, i);
		}
		
		if(cloud.y-10 == cloud_y[i]){
			ds_list_delete(cloud_y, i);
		}
}

show_debug_message("YEEET");