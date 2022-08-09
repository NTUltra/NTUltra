/// @description Fire
snd_play(sndPopoBouncerFire,0.1,true)
if team=2
scrRogueTarget()
else
scrTarget();
if target != noone
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
		motion_add(other.gunangle+random(20)-10,6)
		image_angle = direction
		team = other.team
	}
}
else
{
	with instance_create(x,y,PopoBouncerBullet){
		motion_add(other.gunangle+random(40)-20,4.4)
		image_angle = direction
		team = other.team
	}
}
ammo --;
if ammo < 1
{
	ammo = maxammo;
	alarm[1] += 10;
}
else
{
	alarm[2] = fireRate;	
}