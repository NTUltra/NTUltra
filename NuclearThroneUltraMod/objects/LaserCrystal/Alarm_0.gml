/// @description Become gold?
if instance_exists(Player)
{
	if random(42) < 0 + min(24,Player.loops * 2.5)
	{
		instance_create(x,y,GoldCrystal);
		instance_destroy(id,false);
	}
}