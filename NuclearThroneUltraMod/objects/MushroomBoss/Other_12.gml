/// @description SHIFT TYPE
if mode == 0
{
	snd_play(sndBigMushroomBossSwap,0.05);
	forceAnimation = spr_to_toxic;
	sprite_index = forceAnimation;
	event_user(14);
	alarm[4] = max(1,(animationDuration/image_speed));
	alarm[1] += alarm[2];
	
}
else
{
	snd_play(sndBigMushroomBossSwap,0.05);
	forceAnimation = spr_to_earth;
	event_user(14);
	alarm[4] = max(1,(animationDuration/image_speed));
	alarm[1] += alarm[2];
}
