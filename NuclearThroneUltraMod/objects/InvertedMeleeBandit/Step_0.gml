event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,3)
if target != noone
mp_potential_step(target.x,target.y,2,false)
}


if dodge > -8
{
	if UberCont.normalGameSpeed == 60
	{
		dodge -= 0.5
		if dodge > 0
		{
			if round(dodge) == dodge
				sprite_index=spr_walk;
			move_contact_solid(direction,3)
		}
	}
	else
	{
		dodge -= 1;
		if dodge > 0
		{
			sprite_index=spr_walk;
			move_contact_solid(direction,6)
		}
	}
}
else if canDodge && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if target != noone && instance_exists(target) && instance_exists(Player) && Player.fired
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 4
walk=4;
sprite_index=spr_walk;
gunangle = direction
}}


if speed > 3.5
speed = 3.5

