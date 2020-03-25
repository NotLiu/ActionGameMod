/// @description Insert description here
// You can write your code in this editor


draw_set_font(font0);
depth = -1000;

//draw scoreboard

draw_text_color(camera_get_view_x(view_camera[0])+40, camera_get_view_y(view_camera[0])+score_y_1, string(score_1), c_red, c_red, c_maroon, c_maroon, 1);

if(score_2 <= -10){
	draw_text_color(camera_get_view_x(view_camera[0])+room_width-110, camera_get_view_y(view_camera[0])+score_y_2, string(score_2), c_lime, c_lime, c_green, c_green, 1);
}
else{
	draw_text_color(camera_get_view_x(view_camera[0])+room_width-70, camera_get_view_y(view_camera[0])+score_y_2, string(score_2), c_lime, c_lime, c_green, c_green, 1);
}

//draw height
var player_high = min(inst_361EDD44.y, inst_AC7B74C.y);
var height = (room_height - player_high);

if(height < 0){
	height = 0;	
}
if(global.max_height<height){
	global.max_height = height;	
}

draw_text_color(camera_get_view_x(view_camera[0])+280, camera_get_view_y(view_camera[0])+20, string(height)+"ft", c_white, c_white, c_teal, c_teal, 1);

//draw_text_color(100,800, string(objGameManager.red_score), c_red, c_red, c_maroon, c_maroon, 1);

