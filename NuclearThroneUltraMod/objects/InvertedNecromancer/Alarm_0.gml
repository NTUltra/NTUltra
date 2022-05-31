/// @description Become gold?
if instance_exists(Player) && Player.loops > 0
{
	if random(40) < 0 + min(18,Player.loops * 3)
	{
		instance_create(x,y,InvertedGoldNecromancer);
		instance_destroy(id,false);
	}
}
