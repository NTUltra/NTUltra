/// @description BIG EARTHQUACKE SHIFT!
if mode == 0
{
	if instance_exists(Player) && !place_meeting(x,y,Tangle)
	{
		forceAnimation = spr_shrink;
		event_user(14);
		snd_play_2d(sndBigMushroomBossShrink);
		mask_index = mskPickupThroughWall;
		alarm[3] = max(1,(animationDuration/image_speed) - 1);
		with instance_create(x,y,MushroomBossShift)
		{
			alarm[0] = other.alarm[3];
			maxDuration = alarm[0];
		}
		alarm[1] += alarm[3];
		var preva = Player.area
		var a = 124;
		if preva == 124
			a = 117;
		with instance_create(Player.x,Player.y,PortalEnviromentReplacer)
		{
			area = a;
			prevArea = preva;
		}
	}
}
else
{
	event_user(2);
	alarm[5] = max(1,(animationDuration/image_speed) - 1) + 1;
	alarm[1] += alarm[5];
}