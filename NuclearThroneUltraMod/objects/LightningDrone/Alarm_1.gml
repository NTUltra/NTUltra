/// @description AI
alarm[1] = actTime;
target = noone;
if instance_exists(enemy) {
	target = instance_nearest(x,y,enemy);
	
	var dis = point_distance(x,y,target.x,target.y);
	var noLos = collision_line(x,y,target.x,target.y,Wall,false,false);
	if dis > 300
	{
		direction = random(360);
		image_angle = direction;
		motion_add(direction,3);
		walk = actTime * 0.5;
		if hspeed > 0
			right = -1;
		else
			right = 1;
	}
	else if !noLos && dis < 96
	{
		var dir = point_direction(x,y,target.x,target.y);
		motion_add(dir,1);
		if instance_exists(Player) && Player.skill_got[17] = 1
			snd_play_fire(sndLightning3)
		else
			snd_play_fire(sndLightning1)
			with instance_create(x,y,Lightning)
			{
				scrCopyWeaponMod(other);
				image_angle = other.direction+(random(20)-10)
				team = other.team
				ammo = 12
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
		alarm[1] += actTime * 0.5;
		image_angle = dir;
		if target.x > x
			right = -1;
		else
			right = 1;
	}
	else
	{
		var dir = point_direction(x,y,target.x,target.y);
		motion_add(dir,3);
		image_angle = direction;
		walk = actTime;
		if hspeed > 0
			right = -1;
		else
			right = 1;
	}
}
else
{
	direction = random(360);
	speed = 2;
	image_angle = direction;
	motion_add(direction,3);
	walk = actTime * 0.5;
	if hspeed > 0
		right = -1;
	else
		right = 1;
}