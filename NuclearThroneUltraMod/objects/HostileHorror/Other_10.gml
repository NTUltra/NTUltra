/// @description Release
alarm[2] = actTime * 3;
with mySound
	instance_destroy();
debug(consecutiveShots);
if consecutiveShots > 6
{
	if consecutiveShots < 20
	{
		snd_play(sndHorrorBallRelease);	
	}
	else
	{
		snd_play(sndHorrorBallReleaseUpg);	
	}
	var aimDirection = gunangle
	//BackCont.viewx2 += lengthdir_x(horrorcharge*0.75,aimDirection+180)*UberCont.opt_shake
	//BackCont.viewy2 += lengthdir_y(horrorcharge*0.75,aimDirection+180)*UberCont.opt_shake
	consecutiveShots = min(20,consecutiveShots * 0.5);
	BackCont.shake += consecutiveShots
	with instance_create(x,y,BecomeHostileHorrorBigBall)
	{
		team = other.team;
		//Max is about 20
		myPower = other.consecutiveShots;
		image_xscale = (0.1 + clamp(myPower*0.025,0,0.75))*2;
		image_yscale = image_xscale;
		direction = aimDirection;
		speed = 1;
		image_angle = direction;
	}
}
consecutiveShots = 0;