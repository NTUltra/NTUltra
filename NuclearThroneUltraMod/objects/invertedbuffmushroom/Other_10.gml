/// @description Jawebreaker
scrTarget();
if target > 0 && instance_exists(target)
{
	wkick = 4
	var dir = point_direction(x,y,target.x,target.y);
	gunangle = dir;
	motion_add(gunangle+180,1);
	var odis = fireOffset;
	var xx = x + lengthdir_x(odis,dir+90);
	var yy = y + lengthdir_y(odis,dir+90);
	var proj = EnemyBullet3;
	var pspeed = pSpeed;
	if loops > 2 || ammo == maxAmmo || ammo == 1
	{
		snd_play(sndBouncerFire,0.1,true)
		proj = EnemyBouncerBullet;
		pspeed-= 9;
	}
	else
	{
		snd_play(sndPopgun,0.1,true);
	}
	with instance_create(xx,yy,proj)
	{
		motion_add(dir+10,pspeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(odis,dir-90);
	yy = y + lengthdir_y(odis,dir-90);
	with instance_create(xx,yy,proj)
	{
		motion_add(dir-10,pspeed)
		image_angle = direction
		team = other.team
	}
	ammo --;
	if ammo > 0
	{
		alarm[2] = fireRate;
		alarm[1] += fireRate+1;
	}
	else
	{
		alarm[1] += 20;	
	}
	if walk > 0
	{
		walk ++;
		if ammo == round(maxAmmo*0.5)
			direction += 180;
	}
}
