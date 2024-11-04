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
motion_add(other.image_angle+random(20)-10,3.25)
image_angle = direction
team = 1;
}
}
else if random(3)<1//shotgunlike
{
	if loops > 10
			snd_play(sndBouncerFire);
		else
			snd_play(sndEnemyFire);
	wkick = 8
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle-30,2.25)
		image_angle = direction
		team = 1;
	}
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle,2.25)
		image_angle = direction
		team = 1;
	}
	with instance_create(x,y,proj)
	{
		motion_add(other.image_angle+30,2.25)
		image_angle = direction
		team = 1;
	}
}
else if random(2)<1//snipe danger
{
	if loops > 10
		snd_play(sndBouncerFire);
	else
		snd_play(sndEnemyFire);
with instance_create(x,y,proj)
{
motion_add(other.image_angle+random(6)-3,4)
image_angle = direction
team = 1;
}
}

}
}

