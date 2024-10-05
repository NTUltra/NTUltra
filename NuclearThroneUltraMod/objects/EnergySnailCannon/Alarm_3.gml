/// @description Balls please
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
		snd_play(sndPlasmaBigExplodeUpg)
	else
		snd_play(sndPlasmaBigExplode)
}
var ang = random(360)
var angstep = 360/balls
repeat(balls)
{
	with instance_create(ballX,ballY,EnergySnail)
	{
		motion_add(ang,5)
		image_angle = direction
		scrCopyWeaponMod(other);
		team = other.team
	}
	ang += angstep;
}