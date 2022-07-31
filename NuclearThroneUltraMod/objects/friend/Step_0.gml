/// @description Walking
event_inherited();
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if race == 23
	speed = max(speed,3);
if speed > maxspeed
speed = maxspeed

var bigPortal = noone;
with Portal
{
	if type == 4
		bigPortal = id;
}
if bigPortal != noone && collision_line(x,y,bigPortal.x,bigPortal.y,Wall,false,false) == noone
{
	alarm[1] = 0;
	var dir = point_direction(x,y,bigPortal.x,bigPortal.y);
	motion_add(dir,0.8);
	motion_add(dir+(100*sign(dodgeOffset)),0.5);
	mp_potential_step(bigPortal.x,bigPortal.y,0.7,false);
	sprite_index = spr_hurt;
	image_angle += dodgeOffset*2;
}