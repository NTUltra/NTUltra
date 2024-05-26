event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}

if speed > maxSpeed
speed = maxSpeed

if forceAnimation {
	if UberCont.normalGameSpeed == 60
		forceAnimationIndex += 0.2;
	else
		forceAnimationIndex += 0.4;
	if forceAnimationIndex >= forceAnimationEnd
	{
		if forceAnimationSprite == spr_warp_out
		{
			event_user(0);
		}
		else if forceAnimationSprite == spr_warp_in
		{
			event_user(0);
		}
		else if forceAnimationSprite == spr_chrg_start
		{
			event_user(3);
		}
		else if forceAnimationSprite == spr_chrg
		{
			forceAnimationIndex = 0;
		}
		else if forceAnimationSprite == spr_chrg_end
		{
			event_user(3);
		}
		else if forceAnimationSprite == spr_fire
		{
			forceAnimation = false;
			alarm[4] = 0;
			alarm[6] = 0;
			alarm[1] = actTime + random(actTime);
		}
	}
	if alarm[2] > 0
	{
		speed = dashSpeed;
		direction = gunangle;
	}
}