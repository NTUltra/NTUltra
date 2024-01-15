/// @description Animate End
instance_destroy();
snd_play(sndExplosion);
with instance_create(x,y,HorrorBigBall)
{
	team = other.team;
	//Max is about 20
	myPower = other.myPower;
	image_xscale = other.image_xscale * 0.5;
	image_yscale = image_xscale;
	motion_add(other.direction,6 + min(12,(myPower*0.5)));
	image_angle = direction;
}
BackCont.viewx2 += lengthdir_x(myPower*1.25,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(myPower*1.25,direction)*UberCont.opt_shake
BackCont.shake += myPower