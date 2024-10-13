/// @description BIG EARTHQUACKE SHIFT!
if mode == 0
{
	if instance_exists(Player)
	{
		forceAnimation = spr_shrink;
		event_user(14);
		snd_play_2d(sndLastEnemy);
		mask_index = mskPickupThroughWall;
		alarm[3] = max(1,(animationDuration/image_speed) - 1);
		with instance_create(x,y,MushroomBossShift)
		{
			alarm[0] = other.alarm[3];
			maxDuration = alarm[0];
		}
		alarm[1] += alarm[3];
		with instance_create(Player.x,Player.y,PortalEnviromentReplacer)
		{
			area = 124;
			prevArea = 117;
		}
	}
}
else
{
	event_user(2);
	alarm[5] = max(1,(animationDuration/image_speed) - 1) + 1;
	alarm[1] += alarm[5];
}