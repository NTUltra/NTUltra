/// @description shooot
if alarm[7] > 0
{
	alarm[1] = 900;
	exit;
}
snd_play_2d(sndBigMachineShoot);

///shoot
with instance_create(x+6,y+64,EnemyBullet5)
{motion_add(270,14)
team = other.team
image_angle = direction}



with instance_create(x,y+64,EnemyBullet5)
{motion_add(270,14)
team = other.team
image_angle = direction}


with instance_create(x-6,y+64,EnemyBullet5)
{motion_add(270,14)
team = other.team
image_angle = direction}

ammo--;

if ammo>0
alarm[1]=fireRate;

