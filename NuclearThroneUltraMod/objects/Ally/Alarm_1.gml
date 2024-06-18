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
else if sprite_index = sprAllyGAppear
{
	spr_idle = sprAllyGIdle
	sprite_index = spr_idle
}
alarm[1] = 10+irandom(6);

var cantFightRightNow = false;
if (target == noone || !instance_exists(target)) || (random(8)<1)
{
	if instance_exists(enemy)
		target = instance_nearest(x,y,enemy)
}
if target != noone && instance_exists(target) && target.team != 2 && target.my_health > 0
{
	//GOT A TARGET
	var tDis = point_distance(x,y,target.x,target.y);
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and tDis < 400
	{
		isInFight = 20;
		if !grabbed
		mp_potential_step(target.x,target.y,0.5,false);
		if random(10) < 9
		{
			//FIRE
			snd_play(sndEnemyFire)

			gunangle = point_direction(x,y,target.x+hspeed,target.y+target.vspeed)
			wkick = 4
			with instance_create(x,y,AllyBullet)
			{
				motion_add(other.gunangle+random(12)-6,9)
				image_angle = direction
				team = other.team
			}
			if instance_exists(Player)
			{
				if Player.skill_got[5] = 1
				{
					alarm[1] = 5
					isInFight += 5;
				}
				else
					alarm[1] = 10
			}
		}
		else
		{
			//DONT FIRE
			direction = point_direction(x,y,target.x,target.y)+random(180)-90
			speed = 0.5

			if !grabbed && instance_exists(Player) and random(5) < 4
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
	else if !grabbed 
	{
		if tDis < 180 && isInFight > 0
		{
			mp_potential_step(target.x,target.y,3,false);
			walk = max(1,walk);
			speed = 0.5;
			isInFight -= 1;
			alarm[1] = 1;
		}
		else if random(5) < 3
		{
			cantFightRightNow = true;
			isInFight = 0;
			//CANT SEE TARGET
			motion_add(random(360),0.4)
			if instance_exists(Player)
			{
				motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.5)
				motion_add(point_direction(x,y,Player.x,Player.y),0.8)
			}
			walk = 7+random(5)
			alarm[1] = walk - 1;
			gunangle = direction
			if hspeed > 0
			right = 1
			else if hspeed < 0
			right = -1
		}
		else
		{
			cantFightRightNow = true;
			isInFight = 0;
			alarm[1] += 2;	
		}
	}
}
else if !grabbed 
{
	cantFightRightNow = true;
	isInFight = 0;
	if random(4) < 1
	{
		//GOT NO TARGET
		motion_add(random(360),0.4)
		walk = 5+random(5)
		alarm[1] = walk - 2
		gunangle = direction
		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
	target = noone;
}
if !grabbed && cantFightRightNow && instance_exists(Player) && /*point_distance(x,y,Player.x,Player.y) > 52 || */collision_line(x,y,Player.x,Player.y,Wall,false,false)
{
	isInFight = 0;
	//mp_potential_step(Player.x,Player.y,1,false)
	//path_end();
	mp_potential_path(path,Player.x,Player.y,maxSpeed,pathLength,0);
	var endX = path_get_point_x(path,path_get_length(path)-1);
	var endY = path_get_point_y(path,path_get_length(path)-1);
	if (collision_line(endX,endY,Player.x,Player.y,Wall,false,false))
	{
		pathLength = min(pathLength + 1, 12);
		alarm[1] = 1;
	}
	else
	{
		pathLength = 4;
		walk = 0;
		path_end();
		if UberCont.normalGameSpeed == 60
			path_start(path,maxSpeed*0.5,0,true);
		else
			path_start(path,maxSpeed,0,true);
		// currentPath = path;
	}
}
else
{
	path_end();
}