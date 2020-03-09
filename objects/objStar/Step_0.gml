/// @description Insert description here
// You can write your code in this editor

if(alarm[0] == -1){
	alarm[0] = 20;
}

hspd = lengthdir_x(irandom_range(7,10), image_angle);
vspd = lengthdir_y(irandom_range(7,10), image_angle);

x += hspd;
y += vspd;