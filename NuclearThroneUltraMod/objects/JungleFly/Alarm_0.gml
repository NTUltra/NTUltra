/// @description Become gold?
if instance_exists(Player) && Player.loops > 1
{
	if random(40) < 0 + min(26,Player.loops * 2)
	{
		instance_create(x,y,GoldJungleFly);
	}
}
