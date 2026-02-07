/// @description Start spin attack
event_inherited();
ammo = 20+20*(1-(my_health/maxhealth));
usedMaxAmmo = ammo;
if !reachedVeryLowHP && my_health < 0.25
{
	reachedVeryLowHP = true;
	maxSpinSpeed += 0.5;
	turnSpeed += 1;
	if !audio_is_playing(sndBigDogTaunt)
		snd_play(sndBigDogTaunt)
	actTime = max(actTime - 1, 1);
	missileAmount ++;
}