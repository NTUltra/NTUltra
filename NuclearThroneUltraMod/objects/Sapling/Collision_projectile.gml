/// @description Destroy projectiles
with other
{
	if other.team != 2
	{
		if isGrenade
		{
			snd_play(sndHitFlesh,0.1,true);
			instance_destroy(id, false);	
		}
		else if canBeMoved
		{
			snd_play(sndHitFlesh,0.1,true);
			instance_destroy(id);
		}
	}
}