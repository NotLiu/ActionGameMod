/// @description Insert description here
// You can write your code in this editor

draw_set_font(font0);

if(global.winner == "RED"){
	draw_text_transformed_color(130,250, text,3,3,0,c_red,c_red,c_red,c_red,1);
}
else{
	draw_text_transformed_color(40,250, text,3,3,0,c_green,c_green,c_green,c_green,1);
}
draw_set_font(font01);

draw_text_transformed_color(30,400, text_score,2.5,2.5,0,c_white,c_white,c_white,c_white,1);

draw_text_transformed_color(60,500, "Press space to restart!",2,2,0,c_white,c_white,c_white,c_white,1);