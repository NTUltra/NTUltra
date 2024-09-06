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
		event_user(15);
	}
}
speed = 0;