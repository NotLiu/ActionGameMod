/// @description Insert description here
// You can write your code in this editor

var cam_id = view_camera[0];
//cam_width = camera_get_view_width(cam_id);
cam_height = camera_get_view_height(cam_id);

//x += (target.x-x) * scroll_spd;
//y += (target.y-y) * scroll_spd;



//camera_set_view_pos(cam_id, x, clamp(y, 0, room_height)-cam_height*0.5);

var player_high = min(inst_361EDD44.y, inst_AC7B74C.y); // get highest player position

if(player_high > room_height-cam_height+10){
	camera_set_view_pos(cam_id, x+x_move, room_height-cam_height);
}
else{
	camera_set_view_pos(cam_id, x+x_move, player_high - 25);
}
camera_set_view_size(cam_id, origx, origy);
