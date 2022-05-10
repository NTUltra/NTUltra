if ammo>0
{snd_play(sndGruntFire)
wkick = 5
motion_add(gunangle+180,0.5)
with instance_create(x,y,IDPDBullet){
motion_add(other.gunangle+random(20)-10,7.8)
image_angle = direction
team = other.team
if team == 2
	sprite_index = sprIDPDBulletRogue;}
alarm[2] = 3
ammo -= 1}

