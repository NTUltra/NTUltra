/// @description DAMAGE BOOST THAT SHIT
with other
{
	if team == 2 && !damageBoosted
	{
		damageBoosted = true;
		dmg *= 1.30;
		with MarkerWallToggler
		{
			alarm[2] = 5;
		}
		snd_play(sndHunterWallDamageBoost,0.1);
	}
}