/// @description Destroy projectiles
with other
{
	if team != 2
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