/// @description Spawn tiny spiraling mini plasma balls
alarm[1] = sdelay;
with instance_create(x,y,MiniSplasmaBall)
{
	direction = other.direction;
	speed = 1
	if instance_exists(Player)
		speed *= Player.pSpeedBoost;
}
with instance_create(x,y,MiniSplasmaBall)
{
	direction = other.direction+180;
	speed = 1
	if instance_exists(Player)
		speed *= Player.pSpeedBoost;
}
snd_play(sndPlasmaMinigun,0.2,true);