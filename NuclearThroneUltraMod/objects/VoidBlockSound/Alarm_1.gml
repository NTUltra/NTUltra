/// @description Destroy and sound

if instance_exists(Player) && Player.skill_got[5]
	snd_play_2d(sndVoidConsumptionXL,0.01);
else
	snd_play_2d(sndVoidConsumptionM,0.01);
instance_destroy();