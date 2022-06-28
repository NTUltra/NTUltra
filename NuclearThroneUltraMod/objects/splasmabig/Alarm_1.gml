/// @description Spawn tiny spiraling splasma balls
alarm[1] = 8;
with instance_create(x,y,SplasmaBall)
{
	direction = other.direction;
	speed = 1
	if instance_exists(Player)
		speed *= Player.pSpeedBoost;
	angleDir = 20;
}
with instance_create(x,y,SplasmaBall)
{
	direction = other.direction+180;
	speed = 1
	if instance_exists(Player)
		speed *= Player.pSpeedBoost;
	angleDir = 20;
}
snd_play(sndPlasmaMinigunUpg,0.2,true);