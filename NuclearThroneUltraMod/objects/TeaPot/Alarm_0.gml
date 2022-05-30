/// @description Become gold?
if instance_exists(Player)
{
	if random(40) < 0 + min(24,Player.loops * 3)
	{
		instance_create(x,y,GoldTeapot);
		instance_destroy(id,false);
	}
}