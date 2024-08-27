/// @description Horror Ultra B Anomaly
totalEnemyHealth = 0;
with enemy
{
	if object_index != IDPDVan && object_index != IDPDVanVertical && !totemImmune
		other.totalEnemyHealth = other.totalEnemyHealth + min(maxhealth, my_health)
}

//We've reached a new high set this as the maximum hp we found this level.
//if totalEnemyHealth>maxEnemyHealthInLevel
//maxEnemyHealthInLevel=totalEnemyHealth;
//retail is 140
alarm[3] = 30;
var horrorBreak = 130 * min(2,1 + (loops*0.1));
if scrIsHardMode()
{
	horrorBreak *= 1.15;
}
if totalEnemyHealth<=horrorBreak&&!instance_exists(GenCont)&&!instance_exists(LevCont)&&instance_exists(enemy)//&&!instance_exists(becomenemy)&&!instance_exists(WantBoss)
{
	with GoldTotem
	{
		my_health = 0;
		prevhealth = 0;
	}
	with enemy
	{	
		if team != 2
		{	
			sleeping = true;
			my_health = 0;
			prevhealth = 0;
		}
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
	with projectile
	{
		if team != 2
		{
			instance_destroy(id,false);	
		}
	}
	BackCont.shake = 50 * UberCont.opt_shake;
}