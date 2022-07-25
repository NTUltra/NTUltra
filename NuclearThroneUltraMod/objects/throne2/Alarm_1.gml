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
		event_user(0);
	}
	else if ticksBeforeSpiral < 1 && ran > 60
	{
		ticksBeforeSpiral = 1;
		//Do fast spinny attack
	}
	else if ran > 25
	{
		//Accurate shot
		event_user(2);	
	}
	else if ran > 10
	{
		//EXPLOSIVE WAZER BOI
	}
	if ran < 10
	{
		rotationSpeed *= -1;
	}
}
ticksBeforeSpiral --;
