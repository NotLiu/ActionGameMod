/// @description Insert description here
// You can write your code in this editor
y = camera_get_view_y(view_camera[0]);

if( room_height - y > 3000 && star_count <= 10){
		instance_create_layer(irandom_range(30, room_width-30), irandom_range(camera_get_view_y(view_camera[0])+500,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])),"Instances", star_array[irandom_range(0,2)]);
		star_count += 1;
}