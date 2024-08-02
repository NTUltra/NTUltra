/// @description BIG EARTHQUACKE SHIFT!
if mode == 0
{
	forceAnimation = spr_shrink;
	event_user(14);
	alarm[3] = max(1,(animationDuration/image_speed) - 1);
	alarm[1] += alarm[3];
}
else
{
	
}