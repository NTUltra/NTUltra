//PRE LOOP
alarm[1] = actTime;

scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
image_angle = point_direction(x,y,target.x,target.y)
if random(4) < 1//banditstyle
{
	if loops > 10
		snd_play(sndBouncerFire);
	else
		snd_play(sndEnemyFire);
wkick = 4
sprite_index=spr_fire
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle+random(20)-10,other.defaultSpeed + 1.25)
		image_angle = direction
		team = 1;
	}
}
else if random(3)<1//shotgunlike
{
	if loops > 10
	{
		snd_play(sndBouncerFire);
		with instance_create(x,y,EnemyBouncerBullet)
		{
			motion_add(other.image_angle-30,other.defaultSpeed + 0.25)
			image_angle = direction
			team = 1;
		}
		with instance_create(x,y,EnemyBouncerBullet)
		{
			motion_add(other.image_angle,other.defaultSpeed + 0.25)
			image_angle = direction
			team = 1;
		}
		with instance_create(x,y,EnemyBouncerBullet)
		{
			motion_add(other.image_angle+30,other.defaultSpeed + 0.25)
			image_angle = direction
			team = 1;
		}
	}
	else
		snd_play(sndEnemyFire);
	wkick = 8
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle-30,other.defaultSpeed + 0.25)
		image_angle = direction
		team = 1;
	}
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle,other.defaultSpeed + 0.25)
		image_angle = direction
		team = 1;
	}
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle+30,other.defaultSpeed + 1.25)
		image_angle = direction
		team = 1;
	}
}
else if random(2)<1//snipe danger
{
	snd_play(sndEnemyFire);
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle+random(6)-3,other.defaultSpeed + 2)
		image_angle = direction
		team = 1;
	}
}

}
}

