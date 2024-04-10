/// @description xxx

// Inherit the parent event
event_inherited();

direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
image_angle = direction;
speed = 12;
alarm[0] = 10;
if instance_exists(Player) && Player.skill_got[5]
	alarm[0] = 20;