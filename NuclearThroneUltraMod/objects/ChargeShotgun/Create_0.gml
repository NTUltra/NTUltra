event_inherited();
rate = 5;
if (instance_exists(Player) && Player.skill_got[42])
	snd_play(sndChargeShort);
else
	snd_play(sndChargeMedium);
	//snd_play(sndChargeMedium, 0, false, true, 2,false, true,0.8,false,id,2);

chargeType = scrGetChargeType();