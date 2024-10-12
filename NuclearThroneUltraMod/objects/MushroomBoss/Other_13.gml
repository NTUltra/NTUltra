/// @description BIG EARTHQUACKE SHIFT!
if mode == 0
{
	forceAnimation = spr_shrink;
	event_user(14);
	mask_index = mskPickupThroughWall;
	alarm[3] = max(1,(animationDuration/image_speed) - 1);
	alarm[1] += alarm[3];
}
else
{
	event_user(2);
	alarm[5] = max(1,(animationDuration/image_speed) - 1) + 1;
	alarm[1] += alarm[5];
}