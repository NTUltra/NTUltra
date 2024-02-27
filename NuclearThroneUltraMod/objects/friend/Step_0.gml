/// @description Walking
event_inherited();
if walk > 0
{
walk -= 1
motion_add(direction,0.6)
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
if speed > maxSpeed
speed = maxSpeed

var bigPortal = noone;
with Portal
{
	if type == 4
		bigPortal = id;
	else if bigPortal == noone
		bigPortal = id;
}
if bigPortal != noone && collision_line(x,y,bigPortal.x,bigPortal.y,Wall,false,false) == noone
&& !(bigPortal.sprite_index == sprProtoPortalDormant || bigPortal.sprite_index == sprInvertedPortalDormant)
{
	alarm[1] = 0;
	var dir = point_direction(x,y,bigPortal.x,bigPortal.y);
	motion_add(dir,0.8);
	motion_add(dir+(100*sign(dodgeOffset)),0.5);
	mp_potential_step(bigPortal.x,bigPortal.y,0.7,false);
	sprite_index = spr_hurt;
	image_angle += dodgeOffset*2;
}
else if !instance_exists(ThroneExplo)
{
	if instance_exists(PopoNade)
	{
		var np = instance_nearest(x,y,PopoNade);
		if np != noone && point_distance(x,y,np.x,np.y) < 64
		{
			motion_add(point_direction(x,y,np.x,np.y)+180+dodgeOffset,0.4);
		}	
	}
	if instance_exists(projectile)
	{
		var np = instance_nearest(x,y,projectile);
		if np != noone && np.team != team && point_distance(x,y,np.x,np.y) < 64
		{
			motion_add(point_direction(x,y,np.x,np.y)+180+dodgeOffset,0.8);
		}
	}
}