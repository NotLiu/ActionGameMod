/// @description Insert description here
// You can write your code in this editor


draw_set_font(font0);
depth = -1000;

//draw scoreboard

draw_text_color(camera_get_view_x(view_camera[0])+40, camera_get_view_y(view_camera[0])+20, string(score_1), c_red, c_red, c_maroon, c_maroon, 1);

if(score_2 <= -10){
	draw_text_color(camera_get_view_x(view_camera[0])+room_width-110, camera_get_view_y(view_camera[0])+20, string(score_2), c_lime, c_lime, c_green, c_green, 1);
}
else{
	draw_text_color(camera_get_view_x(view_camera[0])+room_width-70, camera_get_view_y(view_camera[0])+20, string(score_2), c_lime, c_lime, c_green, c_green, 1);
}

//draw_text_color(100,800, string(objGameManager.red_score), c_red, c_red, c_maroon, c_maroon, 1);
