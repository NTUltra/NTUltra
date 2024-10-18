/// @description Activate all enemies
BackCont.shake += 20;
snd_play_2d(sndGhostSpawn);
with UberCont
{
	ds_list_clear(keepDeactive);	
}
instance_activate_object(enemy)
with enemy
{
	if team != 2
	{
		repeat(2)
		{
			with instance_create(x,y,Smoke)
			{
				motion_add(random(360),1 + random(2));
			}
		}	
	}
}
with TopCont
{
	with TopCont
	{
		if !scrIsCrown(19)
		{
			darkness = 2;
			if ((instance_exists(Player) && Player.race == 3) || (instance_exists(PlayerSpawn) && PlayerSpawn.race == 3))
			{
				darkness = 0;	
			}
		}
	}	
}
instance_destroy();