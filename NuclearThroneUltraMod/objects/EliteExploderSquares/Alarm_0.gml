/// @description xxx
snd_play(sndGruntFire);
var ang = 0;
repeat(6)
{
	with instance_create(x,y,EnemyBullet1Square)
	{
		sprite_index = sprIDPDSquareBullet;
		motion_add(ang,4);
		image_angle = direction
		team = other.team
	}
	ang += 60;
}