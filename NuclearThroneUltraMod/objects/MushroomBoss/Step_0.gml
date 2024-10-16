event_inherited()
if sprite_index == spr_hurt && forceAnimation == spr_idle
{
	forceAnimation = spr_hurt;
	forceImageIndex = image_index;
	if image_index >= image_number - 1
	{
		sprite_index = forceAnimation;	
	}
}
else
{
	if UberCont.normalGameSpeed == 60
		forceImageIndex += 0.2;
	else
		forceImageIndex += 0.4;
	if forceImageIndex >= animationDuration
	{
		forceAnimation = spr_idle;
		event_user(14);
	}
}
speed = 0;

if !instance_exists(Player) && sndtaunt = 0
{
	if UberCont.normalGameSpeed == 60
		tauntdelay += 0.5;
	else
		tauntdelay += 1
	if tauntdelay > 50
	{
		snd_play_2d(sndBigMushroomBossTaunt);
		sndtaunt = 1
	}
}