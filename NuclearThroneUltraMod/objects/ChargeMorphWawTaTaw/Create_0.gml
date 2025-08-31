event_inherited();
rate = 1;
mySound = noone
if (instance_exists(Player) && Player.skill_got[42])
	mySound = snd_play(sndChargeShort);
else
	mySound = snd_play(sndChargeMedium);
chargeType = scrGetChargeType();
mywep = 0;