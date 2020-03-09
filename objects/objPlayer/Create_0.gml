/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

gravity_vel = .55;
x_vel = 0;
y_vel = 0;

jump_vel = -16;
x_accel = .85;
x_decel = 0.03;

x_move_vel = 0;
y_move_vel = 0;

max_x_vel = 10;

out = true; //start with player out of bounds and then launch after delay
alive = true;

if(move_set == 1){
		sprite_index = sprite7;
}