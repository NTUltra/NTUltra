///@description AI
alarm[1] = actTime + random(actTime);
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
	else if ran > 40
	{
		//Accurate shot
		if loops > 2 || UberCont.opt_gamemode == 34 || isInverted
			event_user(2);
	}
	else if ran > 10
	{
		//cross Bullets from guy
		crossAmmo = crossMaxAmmo;
		event_user(5);
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