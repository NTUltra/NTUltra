/// @description Explode into more bullets
var am = 6;
var angstep = 360/am;
var ang = direction;
if team == 2
	repeat(am)
	{
	
		with instance_create(x,y,PlayerSquareBullet)
		{
			motion_add(ang,8)
			image_angle = direction
			team = other.team
		}
		ang += angstep;
	}
else
	repeat(am)
	{
	
		with instance_create(x,y,EnemyBullet1Square)
		{
			sprite_index = sprIDPDSquareBullet;
			motion_add(ang,6.8)
			image_angle = direction
			team = other.team
		}
		ang += angstep;
	}
	snd_play(sndExplosionS);
	BackCont.shake += 3;
	