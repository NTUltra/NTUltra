/// @description Become gold?
if instance_exists(Player) && Player.area > 99
{
	if random(40) < 0 + min(24,Player.loops * 3)
	{
		instance_create(x,y,InvertedGoldCrystal);
		instance_destroy(id,false);
	}
}
