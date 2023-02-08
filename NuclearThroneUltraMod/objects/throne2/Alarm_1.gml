///@description AI
alarm[1] = actTime + random(actTime);
if  collision_point(x,y,Floor,false,false) && onFloorFail < 3
{
	//Less likely if nearly impossible to throw balls at you when on ground
	alarm[1] = 2
	onFloorFail += 1;
	exit;
}
onFloorFail = 0;
scrTarget()
if target > 0 {
	var ran = random(100);
	if ran > 90
	{
		//Toggle closeness
		event_user(4);
	}
	if ran > 75
	{
		ammo = maxAmmo;
		//Big balls
		event_user(0);
	}
	else if ran > 50
	{
		//Big laser balls
		ammo = maxAmmo;
		event_user(1);
	}
	else if ran > 30
	{
		//Accurate shot
		if loops > 2 || scrIsHardMode() || isInverted
			event_user(2);
		else
			alarm[1] = max(1,alarm[1] - 5);
	}
	else if ran > 10
	{
		//cross Bullets from guy
		crossAmmo = crossMaxAmmo;
		event_user(5);
		if ran > 25
		{
			rotationSpeed *= -1;
		}
	}
	if ran < 10
	{
		rotationSpeed *= -1;
	}
}
if !reachedHalfHP && my_health < maxhealth * 0.5
{
	reachedHalfHP = true;
	actTime -= 2;
	rotationSpeed *= 1.1;
	fireRate -= 1
	crossAmount ++;
	maxAmmo ++;
	snd_play(sndNothing2HalfHP);
}