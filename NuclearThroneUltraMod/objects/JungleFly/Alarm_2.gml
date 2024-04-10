/// @description FLY MAGGOT!
if totalAmmo < 1
	exit;
scrTarget()

snd_play(sndFlyFire);
with instance_create(x,y,Maggot)
{
	ignoreOverlap = true;
	raddrop = 0;
	existTime = 30;
	countKill = false;
	motion_add(other.gunangle+(random(28)-14),6)
	image_angle = direction
	team = other.team
	charge = true;
	wasResurrected = true;
	alarm[1] = 0;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] = 60
		charge = false;
		scrGiveSnooze();
		speed = 1;
		image_angle = 0;
	}
}
if (target != noone)
{
	gunangle = point_direction(x,y,target.x,target.y);
	direction = gunangle;
}
ammo --;
if ammo > 0
{
	alarm[2] = firerate;
	alarm[1] += firerate+3;
	speed --;
}