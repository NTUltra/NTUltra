/// @description Become gold?
if instance_exists(Player) && Player.loops > 0
{
	if random(42) < 0 + min(26,Player.loops * 2.5)
	{
		instance_create(x,y,InvertedGoldHyena);
		instance_destroy(id,false);
	}
}
