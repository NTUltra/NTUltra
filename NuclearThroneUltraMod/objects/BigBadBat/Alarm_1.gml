///@description AI
alarm[1] = actTime + random(actTime);
if instance_exists(Player) {
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
		event_user(1);
	}
	else if ran > 25
	{
		//Accurate shot
		event_user(2);	
	}
	else if ran > 10
	{
		//EXPLOSIVE WAZER BOI
		event_user(3);
	}
	if ran < 10
	{
		rotationSpeed *= -1;	
	}
}
else
{
	if audio_is_playing(sndDragonLoop)
		audio_stop_sound(sndDragonLoop);
	motion_add(random(360),0.4);	
}
ticksBeforeSpiral --;
