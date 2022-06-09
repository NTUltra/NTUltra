/// @description Become gold?
if instance_exists(Player) && Player.area > 99
{
	if random(42) < 0 + min(24,Player.loops * 2.5)
	{
		instance_create(x,y,InvertedGoldCrystal);
		instance_destroy(id,false);
	}
}
