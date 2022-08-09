/// @description Horror Ultra B Anomaly
totalEnemyHealth=0;
with enemy
{
	if object_index != IDPDVan ||  object_index != IDPDVanVertical
		other.totalEnemyHealth=other.totalEnemyHealth+my_health
}

//We've reached a new high set this as the maximum hp we found this level.
//if totalEnemyHealth>maxEnemyHealthInLevel
//maxEnemyHealthInLevel=totalEnemyHealth;
//retail is 140
alarm[3] = 30;

if totalEnemyHealth<=142&&!instance_exists(GenCont)&&!instance_exists(LevCont)&&instance_exists(enemy)&&!instance_exists(becomenemy)&&!instance_exists(WantBoss)
{
with enemy
{	
	if team != 0
		my_health=0;
}
	var ended = false;
	with Portal
	{
		if !inverted && alarm[1] < 1
			ended = true;
	}
	if !ended
	{
		snd_play_2d(sndHorrorPortal);
		alarm[3] = 60;
	}
}