/// @description Turned around fire and finish turn
spr_fire = spr_turn_around;
sprite_index = spr_fire;
image_index = 1;
image_xscale *= -1;
alarm[10] = (image_number/image_speed);
alarm[1] += alarm[10];
event_user(3);