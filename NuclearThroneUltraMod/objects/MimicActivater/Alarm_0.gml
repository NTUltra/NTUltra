/// @description Can activate
if instance_exists(Player)
{
	if Player.y - y < 100
	{
		with BecomeMimic
		{
			instance_destroy();
			instance_create(x,y,MimicBoss);
		}
	}
}
alarm[0] = 30;