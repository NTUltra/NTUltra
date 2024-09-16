event_inherited();
rate = 0;
if (instance_exists(Player) && Player.skill_got[42])
	snd_play(sndChargeShort);
else
	snd_play(sndChargeMedium);
chargeType = scrGetChargeType();