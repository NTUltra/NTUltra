/// @description Fire
snd_play(sndPopoBouncerFire,0.15,true)
if team=2
scrRogueTarget()
else
scrTarget();
walk += 1;

if fireRate < 2
	motion_add(gunangle + 180,0.4);
else if fireRate > 3
	motion_add(gunangle,0.4);
var far = true;
if target != noone && instance_exists(target)
{
	far = point_distance(x,y,target.x,target.y) > 350;
	if far
	{
		walk += 1;
		fireRate = max(fireRate, minFireRate);
	}
	if random(3) < 1
		gunangle = point_direction(x,y,target.x-(target.hspeed*0.25),target.y-(target.vspeed*0.25));
	if target.x < x
	    right = -1
	else if target.x > x
		right = 1
}
else
{
	ammo = 1;
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
	var range = max(1,22 - fireRate * 1.5);
	var ps = 7 - (fireRate*0.5)//4.9 start
	if far ps -= 0.5;
	with instance_create(x,y,PopoBouncerBullet){
		motion_add(other.gunangle+random_range(range,-range),ps)
		image_angle = direction
		team = other.team
	}
}
alarm[2] = floor(fireRate);
if far
{
	alarm[1] += 1;
	alarm[2] += 2;
}
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
			fireRate = minFireRate + 1;
		}
	}
	else
	{
		alarm[2] = 0;	
	}
}
else if collision_line(x,y,target.x,target.y,Wall,false,false)
{
	alarm[2] += 1;
	alarm[1] += 1;
	if fireRate < minFireRate
	{
		fireRate += 2;	
	}
	ammo -= 1;
}
if fireRate > 1
{
	fireRate -= 0.5;
}
else
{
	fireRate = 2;	
}

	