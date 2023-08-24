/// @description But still rude
alarm[3] = 20;
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 32
{
	alarm[3] = 5;
	exit;
}
snd_play(sndScorpionFire);
var ang = 0
var am = 8;
var angStep = 360 / am
repeat(am)
{
	with instance_create(x,y,EnemyBullet2)
	{
		motion_add(ang,2)
		image_angle = direction
		team = 1;
	}
	ang += angStep;
}