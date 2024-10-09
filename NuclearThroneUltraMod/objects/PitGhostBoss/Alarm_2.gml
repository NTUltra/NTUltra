/// @description Fire bullets
if goToTarget
	exit;
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostFire,0.1)
with instance_create(x, y, EnemyBullet1Small) {
    motion_add(other.gunangle, other.maxAmmo - other.ammo + 1)
    image_angle = direction
    team = other.team
}
if ammo > maxAmmo - 1
{
	with instance_create(x, y, EnemyBullet1Small) {
	    motion_add(other.gunangle + 5, other.maxAmmo - other.ammo)
	    image_angle = direction
	    team = other.team
	}
	with instance_create(x, y, EnemyBullet1Small) {
	    motion_add(other.gunangle - 5, other.maxAmmo - other.ammo)
	    image_angle = direction
	    team = other.team
	}
}

if ammo > 0
{
	ammo -= 1;
	alarm[2] = 4;
	alarm[1] += 4;
}
else
{
	motion_add(gunangle,acc);
	with instance_create(x, y, PitGhostLaser) {
		raddrop = 0;
		countKill = false;
	    motion_add(other.gunangle + 5, 1)
	    if hspeed > 0
			right = 1;
		else
			right = -1;
	    team = other.team
		walk = actTime;
		alarm[1] = actTime;
		existTime = 30;
	}
	with instance_create(x, y, PitGhostLaser) {
		raddrop = 0;
		countKill = false;
	    motion_add(other.gunangle - 5, 1)
	    if hspeed > 0
			right = 1;
		else
			right = -1;
	    team = other.team
		walk = actTime;
		alarm[1] = actTime;
		existTime = 30;
	}	
}