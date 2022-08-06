/// @description Ion rain
alarm[5] = 100;
var numEn = -3;//Leaway
with enemy
{
	if team != 2
		numEn ++;
}
//Level nearly ended?
if !(numEn <= 0 || (instance_exists(IDPDVan) && numEn <= instance_number(IDPDVan)))
{
	if instance_exists(Player)
	{
		snd_play_2d(sndIonCharge,0.01);
		instance_create(Player.x,Player.y,EnemyIon);
	}
}