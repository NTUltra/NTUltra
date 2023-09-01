/// @description Bowling projectiles
snd_play(choose(sndSword1,sndSword2))
alarm[7] = fireDelay;
var am = 6;
var angStep = 60;
var ang = 0;
repeat(am)
{
	with instance_create(x,y,EnemyLanceSlash)
	{
		motion_add(ang,3);
		image_angle = direction
		team = other.team
	}
	ang += angStep;	
}