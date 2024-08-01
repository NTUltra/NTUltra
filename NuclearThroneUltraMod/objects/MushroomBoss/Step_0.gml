event_inherited()
if sprite_index == spr_hurt && forceAnimation == spr_idle
{
	forceAnimation = spr_hurt;
	forceImageIndex = image_index;
}
else
{
	if UberCont.normalGameSpeed == 60
		forceImageIndex += 0.2;
	else
		forceImageIndex += 0.4;
}
speed = 0;