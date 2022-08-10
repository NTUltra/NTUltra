if sprite_index = sprAllyAppear
{
	spr_idle = sprAllyIdle
	sprite_index = spr_idle
}
else if sprite_index = sprAllyCAppear
{
	spr_idle = sprAllyCIdle
	sprite_index = spr_idle
}
else if sprite_index = sprAllyEAppear
{
	spr_idle = sprAllyEIdle
	sprite_index = spr_idle
}
alarm[1] = 8+random(5)


if !instance_exists(target)
target = -1
if (target = -1) || (random(8)<1)
{
	if instance_exists(enemy)
	target = instance_nearest(x,y,enemy)
}



if target != noone && target > 0
{

	//GOT A TARGET
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 400
	{

	if random(10) < 9
	{
		//FIRE
		snd_play(sndEnemyFire)

		gunangle = point_direction(x,y,target.x,target.y)
		wkick = 4
		with instance_create(x,y,AllyBullet)
		{
			motion_add(other.gunangle+random(20)-10,9)
			image_angle = direction
			team = other.team
		}
		if instance_exists(Player)
		{
			if Player.skill_got[5] = 1
			alarm[1] = 4
			else
			alarm[1] = 9
		}
	}
	else
	{
		//DONT FIRE
		direction = point_direction(x,y,target.x,target.y)+random(180)-90
		speed = 0.5

		if instance_exists(Player) and random(5) < 4
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.5)//0.8
			motion_add(point_direction(x,y,Player.x,Player.y),1)
		}

		walk = 10+random(10)
		gunangle = point_direction(x,y,target.x,target.y)
	}

	if target.x < x
	right = -1
	else if target.x > x
	right = 1
	}
	else if random(5) < 4
	{
		//CANT SEE TARGET
		motion_add(random(360),0.4)
		if instance_exists(Player)
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.5)
			motion_add(point_direction(x,y,Player.x,Player.y),0.8)
		}
		walk = 10+random(5)
		alarm[1] = walk+2
		gunangle = direction
		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
}
else if random(10) < 1
{
	//GOT NO TARGET
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+5
	gunangle = direction
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}
if instance_exists(Player)
if point_distance(x,y,Player.x,Player.y) > 52
mp_potential_step(Player.x,Player.y,1,false)