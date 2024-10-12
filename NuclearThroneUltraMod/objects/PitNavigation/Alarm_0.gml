/// @description enems
alarm[0] = 60;
if alarm[1] < 1 && !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(Portal) && !instance_exists(MimicBossPlateau)
{
	var numEn = 0;
	with enemy
	{
		if team != 2
			numEn ++;
	}
	if instance_exists(IDPDVan)
		numEn -= instance_number(IDPDVan);
	if !instance_exists(WantBoss) && numEn < 1 && !instance_exists(BecomeInvertedGraveyardFish)
	{
		alarm[1] = 15;
		alarm[0] = 0;
		snd_play_2d(sndLastEnemy);
		BackCont.shake += 5;
	}
}