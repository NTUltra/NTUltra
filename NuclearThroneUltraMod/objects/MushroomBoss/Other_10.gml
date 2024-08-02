/// @description Close range toxic spawm / buddy healing
forceAnimation = spr_fire;
event_user(14);
alarm[2] = max(1,(animationDuration/image_speed) - 1);
alarm[1] += alarm[2];