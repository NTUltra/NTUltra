/// @description Ion
snd_play_2d(sndIonCharge,0.01);
if instance_exists(Player)
	instance_create(Player.x,Player.y,EnemyIon);
alarm[4] = 90;
