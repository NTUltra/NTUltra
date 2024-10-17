/// @description Fire
if goToTarget
	exit;
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostLaser,0.1)
var sprt = sprPopoLaser;
var sprtS = sprPopoLaserStart;
var sprE = sprPopoLaserEnd;
if team == 2
	sprt = sprLaser;
with instance_create(x,y,GhostLaser)
{image_angle = other.gunangle
team = other.team
maxDistance = 4 + other.maxAmmo - other.ammo;
laserDecrease -= 0.15;
laserDecrease = max(laserDecrease,0.05);
alarm[2] += 12 + other.maxAmmo - other.ammo;
image_yscale = 0.25;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}
if ammo > maxAmmo - 1
{
	with instance_create(x,y,GhostLaser)
	{image_angle = other.gunangle - 2;
	team = other.team
	maxDistance = 2 + other.maxAmmo - other.ammo;
	laserDecrease -= 0.15;
	laserDecrease = max(laserDecrease,0.05);
	alarm[2] += 14 + other.maxAmmo - other.ammo;
	image_yscale = 0.25;
	event_perform(ev_alarm,0)
	sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}
	with instance_create(x,y,GhostLaser)
	{image_angle = other.gunangle + 2;
	team = other.team
	maxDistance = 2 + other.maxAmmo - other.ammo;
	laserDecrease -= 0.15;
	laserDecrease = max(laserDecrease,0.05);
	alarm[2] += 14 + other.maxAmmo - other.ammo;
	image_yscale = 0.25;
	event_perform(ev_alarm,0)
	sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}
}
walk = 0;
if ammo > 0
{
	ammo -= 1;
	alarm[5] = 6;
	alarm[1] += 6;
}
else
{
	with instance_create(x, y, PitGhostLaser) {
		raddrop = 0;
		countKill = false;
	    motion_add(other.gunangle + 5, 2)
	    if hspeed > 0
			right = 1;
		else
			right = -1;
	    team = other.team
		walk = actTime;
		alarm[1] = actTime;
		existTime = 30;
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] = 60
			scrGiveSnooze();
		}
	}
	with instance_create(x, y, PitGhostLaser) {
		raddrop = 0;
		countKill = false;
	    motion_add(other.gunangle - 5, 2)
	    if hspeed > 0
			right = 1;
		else
			right = -1;
	    team = other.team
		walk = actTime;
		alarm[1] = actTime;
		existTime = 30;
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] = 60
			scrGiveSnooze();
		}
	}
	motion_add(gunangle,acc);
}