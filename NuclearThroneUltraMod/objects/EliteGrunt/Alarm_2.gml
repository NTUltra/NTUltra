snd_play(sndGruntFire)
wkick = 4

with instance_create(x,y,IDPDBullet) {
	motion_add(other.gunangle+random(20)-10,other.projectileSpeed)
	image_angle = direction
	team = other.team
	if team == 2
	{
		sprite_index = sprIDPDBulletRogue;
		RecycleGlandType();
	}
}

ammo--;
if ammo>0
alarm[2] = 3;

