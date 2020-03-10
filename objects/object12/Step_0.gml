/// @description Insert description here
// You can write your code in this editor

y = camera_get_view_y(view_camera[0]);

var player_high = min(inst_361EDD44.y, inst_AC7B74C.y);
var height = (room_height - player_high) div 10 + 100;

if(height < 0){
	height = 0;	
}

color_height = height div 5;

image_alpha = (color_height)/100;