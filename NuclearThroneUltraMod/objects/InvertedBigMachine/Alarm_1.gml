/// @description shooot
if instance_exists(SpiralCont)
	alarm[1] += 30;
snd_play_2d(sndNothingBeamStart);

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
alarm[1]=5;

