
if sprite_index = spr_fire or canfire = 0
speed = 0
else if speed > 1
{
move_contact_solid(direction,1)
if instance_exists(projectile) and canfire = 1 && alarm[3] < 1
{
dir = instance_nearest(x,y,projectile)
	if candeflect < 0 and point_distance(x,y,dir.x,dir.y) < 64 and dir.team != team
	{
		//DEFLECT
		snd_play(sndShielderDeflect,0.1,true);
		candeflect = 10
		with instance_create(x+lengthdir_x(16,point_direction(x,y,dir.x,dir.y)),y+lengthdir_y(16,point_direction(x,y,dir.x,dir.y)),GuardianDeflect)
			team = other.team
	}
}
}

candeflect -= 1
event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,2)
}

if speed > 7
speed = 7


