/// @description Balls of kraken

// Inherit the parent event
event_inherited();
instance_create(x+hspeed,y+vspeed,BigWallBreak);
snd_play(sndBloodCannonEnd,0.1,true)
if instance_exists(Player) &&  Player.skill_got[17]
		snd_play(sndLightningCannonUpg)
	else
		snd_play(sndLightningCannon)
BackCont.shake += 10;
Sleep(20)
var am = 3;
var ang = fireRotation;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,KrakenBall)
	{motion_add(ang,6)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
ang += angStep*0.5;
repeat(am)
{
	with instance_create(x,y,LightningCannonBall)
	{motion_add(ang,6)
	image_angle = direction
	team = other.team}
	ang += angStep;
}