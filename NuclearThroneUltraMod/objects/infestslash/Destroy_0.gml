/// @description Didnea hit toss in a infestbolt

// Inherit the parent event
event_inherited();
if !hitEnemy
{
	snd_play(sndSplinterMinigun,0.05,true,false,2,false,false,0.7);
	BackCont.viewx2 += lengthdir_x(6,image_angle+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,image_angle+180)*UberCont.opt_shake
	with instance_create(x,y,InfestBolt)//5 splinters
	{
		motion_add(other.image_angle,22)
		image_angle = direction
		team = 2;
	}
}