/// @description Become gold?
if instance_exists(Player) && Player.loops > 0
{
	if random(50) < 0 + min(26,Player.loops * 2)
	{
		instance_create(x,y,GoldHyena);
		instance_destroy(id,false);
	}
}
