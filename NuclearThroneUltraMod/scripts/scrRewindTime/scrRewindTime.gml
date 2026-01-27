///scrRewindTime();
// /@description
///@param
function scrRewindTime(){
	if !instance_exists(TimeRewinder)
		exit;
	with Player {
		snd_play_2d(sndRewind,0,true,false,1,1);
		rewinds--;
		TimeRewinder.rewinds = rewinds;
		my_health = max(my_health,TimeRewinder.my_health);
		maxhealth = max(maxhealth,TimeRewinder.maxhealth);
		ammo[0] = max(ammo[0],TimeRewinder.ammo[0]);
		ammo[1] = max(ammo[1],TimeRewinder.ammo[1]);
		ammo[2] = max(ammo[2],TimeRewinder.ammo[2]);
		ammo[3] = max(ammo[3],TimeRewinder.ammo[3]);
		ammo[4] = max(ammo[4],TimeRewinder.ammo[4]);
		ammo[5] = max(ammo[5],TimeRewinder.ammo[5]);
		lastarea = TimeRewinder.lastarea;
		lastsubarea = TimeRewinder.lastsubarea;
		area = TimeRewinder.area;
		subarea = TimeRewinder.subarea;
		baseWeaponTier = TimeRewinder.baseWeaponTier;
		gameDifficulty = TimeRewinder.gameDifficulty;
		oasis = TimeRewinder.oasis;
		inverted = TimeRewinder.inverted;
		freeAmmoRound = TimeRewinder.freeAmmoRound;
		fromCribToVault = TimeRewinder.fromCribToVault;
		rewinding = true;
	}
	room_restart();
}