/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
depth = -100;

gravity_vel = .55;
x_vel = 0;
y_vel = 0;

jump_vel = -16;
x_accel = .85;
x_decel = 0.08;

x_move_vel = 0;
y_move_vel = 0;

max_x_vel = 10;

out = true; //start with player out of bounds and then launch after delay
alive = true;

if(move_set == 1){
		sprite_index = sprite7;
}

part = part_system_create();
type = part_type_create();
emitter = part_emitter_create(part);

part_type_sprite(part, sprite19, 0, 0, 0);
part_type_size(part, .5, 1, -0.1, .1);
part_type_color3(part, c_white, c_teal, c_silver);
part_type_alpha2(part, 1, .8);
