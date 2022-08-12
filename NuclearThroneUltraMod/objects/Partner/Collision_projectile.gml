/// @description Destroy projectiles
with other
{
	if other.team != team
	{
		if isGrenade
		{
			snd_play(sndHitMetal,0.1,true);
			instance_destroy(id, false);	
		}
		else if canBeMoved
		{
			snd_play(sndHitMetal,0.1,true);
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprPartnerBlock;
				depth = other.depth - 2;
			}
			instance_destroy(id);
		}
	}
}