/// @description Exposive
if !instance_exists(Player) || point_distance(x,y,Player.x,Player.y) > 40
{
	snd_play(sndExplosionS,0.1,true);
	instance_create(x,y,SmallExplosion);
}
alarm[1] = 3;