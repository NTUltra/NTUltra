/// @description xxx
alarm[0] = 60;
var numEn = 0;
with enemy
{
	if team != 2
		numEn ++;
}
if alarm[1] < 1 && !instance_exists(WantBoss) && (numEn == 0 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan)))
{
	alarm[1] = 60;
	snd_play_2d(sndLastEnemy);
}