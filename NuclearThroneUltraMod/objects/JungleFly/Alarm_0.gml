/// @description Become gold?
if instance_exists(Player) && Player.loops > 1
{
	if random(42) < 0 + min(26,Player.loops * 2.5)
	{
		instance_create(x,y,GoldJungleFly);
		instance_destroy(id,false);
	}
}
