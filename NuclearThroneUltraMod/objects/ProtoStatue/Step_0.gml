if !isCharged && rad > radRequired
{
	isCharged = true;
	snd_play(sndStatueCharge,0.1,true)
	var numEn = 0;
	with enemy
	{
		if team != 2
		{
			numEn ++;
		}
	}
	if instance_exists(IDPDVan)
		numEn -= instance_number(IDPDVan);
	if numEn > 2
		repeat(2)
			instance_create(x,y,IDPDSpawn)
	my_health = max(20,my_health-20);
}
