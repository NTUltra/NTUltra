/// @description BALL
if instance_exists(Player) && Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
else
	snd_play_fire(sndPlasma)
with instance_create(x,y,ElectroBall)
{
	image_angle = other.direction+180;
	direction = image_angle;
	speed = 5;
	with instance_create(x,y,ElectroBallSpawn)
		image_angle = other.image_angle
}
BackCont.shake += 4;
BackCont.viewx2 += lengthdir_x(5,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,direction+180)*UberCont.opt_shake