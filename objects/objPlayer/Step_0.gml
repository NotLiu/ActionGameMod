/// @description Insert description here
// You can write your code in this editor

if(move_set == 0){ //red player
	if(keyboard_check(ord("A"))){
		x_vel -= x_accel;	
	}
	if(keyboard_check(ord("D"))){
		x_vel += x_accel;	
	}
}
else{ //green player
	if(keyboard_check(vk_left)){
		x_vel -= x_accel;	
	}
	if(keyboard_check(vk_right)){
		x_vel += x_accel;	
	}
}

x_vel = x_vel<0 ? max(x_vel, -max_x_vel) : min(x_vel, max_x_vel);

y_vel += gravity_vel;

x_move_vel = round(x_vel);
y_move_vel = round(y_vel);

for (var i = 0; i < abs(x_move_vel); i++) { //wall bounce
	if (x+sign(x_vel) >= room_width && out == false) { //right-side 
		audio_play_sound(snd_wall, 10, false);
		x_vel *= -1; // reverse our velocity
	} else if (x+sign(x_vel) <= 10 && out == false) { //left-side
		audio_play_sound(snd_wall, 10, false);
		x_vel = -x_vel;
	}
	
	x += sign(x_vel);
}

if(x_vel > 0 && x_vel != 0){ // decelerate player movement
	x_vel -= x_decel;
}
else{
	x_vel += x_decel;
}


if(out == true && alarm[0] == -1){ //reset timer, launches player up
	
	if(move_set == 0 && alive == true){
		objGameManager.score_1 -= 1;	
	}
	if(move_set == 1 && alive == true){
		objGameManager.score_2 -= 1;	
	}
	

	alarm[0] = 100;
}

var sy = sign(y_vel);

var colliding_with = noone;
var colliding_player = noone;

if(out==false && alive && y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+sprite_height){
	while(y_move_vel != 0){
		var colliding = false;
		
		if(sy >= 0){
			colliding_with = instance_place(x, y+sy, objCloud);
			colliding_player = instance_place(x, y+sy, objPlayer);
			
			if(colliding_with != noone){ // colliding with cloud
				
				if( place_meeting(x, y, colliding_with) == false){
					audio_play_sound(snd_jump, 10, false);
					colliding = true;
					
					colliding_with.image_speed = 2;
					
					scr_remove_cloud(colliding_with);
					objGameManager.cloud_count -= 1;
				}
			}
			
			if(colliding_player != noone && y<875){ // colliding with player
				
				if( place_meeting(x, y, colliding_player) == false){
					colliding = true;
					
					if(move_set == 0 && colliding_player.y < 870){
						with(colliding_player){
							//spawn stars
							scr_star_burst();
							audio_play_sound(snd_stomp, 10, false);
							
							image_index = sprite6;
							alive = false;
							objGameManager.score_1 += 1;
							
							x_vel = 0;
							gravity_vel = 15;
						}
					}
					if(move_set == 1 && colliding_player.y < 870){
						with(colliding_player){
							//spawn stars
							scr_star_burst();
							audio_play_sound(snd_stomp, 10, false);
							
							image_index = sprite8;
							alive = false;
							objGameManager.score_2 += 1;
							
							x_vel = 0;
							gravity_vel = 15;
						}
					}

				}
			}
		}
		if(!colliding){
			y+= sy;
			y_move_vel -= sy;
		}
		else{
			y = y + sy;
			y_vel = jump_vel;
			
			image_speed = 1;
			image_index = 0;
			
			break;
		}
		
	}
	
}

if(alive == false){
	y += gravity_vel;
}


if (y > room_height + sprite_height - 100) {
	//spawn stars
	if(out == false){
		scr_star_burst();
		audio_play_sound(snd_suicide, 10, false);
	}
	
	out = true;
	
	if(move_set == 0){
		image_index = sprite5;
							
		x_vel = 0;
		gravity_vel = .5;
	}
	if(move_set == 1){
		image_index = sprite7;
							
		x_vel = 0;
		gravity_vel = .5;
	}
}

show_debug_message("moveset: "+string(move_set)+"..."+string(y));