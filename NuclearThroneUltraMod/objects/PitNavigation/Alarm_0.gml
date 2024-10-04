/// @description enems
alarm[0] = 90;
if alarm[1] < 1 && !instance_exists(GenCont) && !instance_exists(LevCont)
{
	var numEn = 0;
	with enemy
	{
		if team != 2
			numEn ++;
	}
	if instance_exists(IDPDVan)
		numEn -= instance_number(IDPDVan);
	if !instance_exists(WantBoss) && numEn < 1
	{
		alarm[1] = 60;
		alarm[0] = 0;
		snd_play_2d(sndLastEnemy);
	}
}