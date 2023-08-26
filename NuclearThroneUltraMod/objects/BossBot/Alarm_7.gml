/// @description Bowling projectiles
snd_play(sndQuadMachinegun);
alarm[7] = fireDelay;
var am = 6;
var angStep = 60;
var ang = 0;
repeat(am)
{
	with instance_create(x,y,EnemyBullet1)
	{
		motion_add(ang,4);
		image_angle = direction
		team = other.team
	}
	ang += angStep;	
}