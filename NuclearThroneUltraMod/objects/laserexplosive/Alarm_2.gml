/// @description Exposive
if !instance_exists(Player) || point_distance(x,y,Player.x,Player.y) > 48
{
	snd_play(sndExplosion,0.1,true);
	instance_create(x,y,Explosion);
}