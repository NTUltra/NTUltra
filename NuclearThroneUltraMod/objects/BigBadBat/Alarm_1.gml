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
	if !lowHealthReached && my_health < maxhealth * 0.4
	{
		lowHealthReached = true;
		snd_play(sndFrogExplode);
		var am = 3+min(loops,4);
		var angStep = 360/am;
		var ang = random(360);
		repeat(am)
		{
			with instance_create(x,y,myBat)
			{
				motion_add(ang,4);	
			}
			ang += angStep;
		}
	}
}
else
{
	if audio_is_playing(sndDragonLoop)
		audio_stop_sound(sndDragonLoop);
	motion_add(random(360),0.4);	
}
ticksBeforeSpiral --;