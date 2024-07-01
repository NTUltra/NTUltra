/// @description Fire
snd_play(sndPopoBouncerFire,0.15,true)
if team=2
scrRogueTarget()
else
scrTarget();
walk += 1;
motion_add(gunangle + 180,0.4);
if target != noone && instance_exists(target)
{
	gunangle = point_direction(x,y,target.x-(target.hspeed*0.25),target.y-(target.vspeed*0.25));
	if target.x < x
	    right = -1
	else if target.x > x
		right = 1
}

if bfire
{
	bwkick = 4;
}
else
{
	wkick = 4
}
bfire = !bfire;
if team == 2
{
	with instance_create(x,y,Bullet3) {
		motion_add(other.gunangle+random(20)-10,7)
		image_angle = direction
		team = other.team
	}
}
else
{
	var range = 23 - fireRate;
	var ps = 7.3 - (fireRate*0.5)//4.9 start
	with instance_create(x,y,PopoBouncerBullet){
		motion_add(other.gunangle+random_range(range,-range),ps)
		image_angle = direction
		team = other.team
	}
}
alarm[2] = floor(fireRate);	
ammo --;
if ammo < 1
{
	ammo = maxammo;
	if target != noone && instance_exists(target)
	{
		if collision_line(x,y,target.x,target.y,Wall,false,false)
		{
			alarm[2] = 0;
			alarm[1] += actTime;
			fireRate = minFireRate;
		}
	}
	else
	{
		alarm[2] = 0;	
	}
}
if fireRate > 1
{
	fireRate -= 0.5;
}
else
{
	fireRate = 2;	
}
	