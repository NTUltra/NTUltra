event_inherited();
rate = 1;
if (instance_exists(Player) && Player.skill_got[42])
	snd_play(sndChargeMedium);
else
	snd_play(sndChargeLong);
chargeType = scrGetChargeType();
mywep = 0;