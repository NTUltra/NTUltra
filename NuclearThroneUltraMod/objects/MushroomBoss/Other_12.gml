/// @description SHIFT TYPE
if mode == 0
{
	forceAnimation = spr_to_toxic;
	sprite_index = forceAnimation;
	event_user(14);
	alarm[4] = max(1,(animationDuration/image_speed));
	alarm[1] += alarm[2];
	
}
else
{
	forceAnimation = spr_to_earth;
	event_user(14);
	alarm[4] = max(1,(animationDuration/image_speed));
	alarm[1] += alarm[2];
}
