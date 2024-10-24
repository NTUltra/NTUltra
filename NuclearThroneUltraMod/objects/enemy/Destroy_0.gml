if(morphMe == 0){

	myCorpse = scrSpawnCorpse();
	snd_play(snd_dead, 0.1);
}
else if morphMe != 6
{
	instance_create(x,y,PortalChecker);
	if morphMe == 2
	{
		with instance_create(x,y,ExplosiveSheep) {
			mySize = other.mySize;
			corpseBoost = other.corpseBoost;
		}
	} else if morphMe == 3
	{
		with instance_create(x,y,UltraSheep) {
			mySize = other.mySize;
			corpseBoost = other.corpseBoost;
		}
	} else if morphMe == 4
	{
		with instance_create(x,y,GoldSheep) {
			mySize = other.mySize;
			corpseBoost = other.corpseBoost;
		}
	}
	else 
	{
		with instance_create(x,y,Sheep) {
			mySize = other.mySize;
			corpseBoost = other.corpseBoost;
		}
	} 
}

//Sleep(15+mySize*10)
//Mutations
scrEnemyDeathEvent();

if totemBuffed
{
	scrDrop(18,2);
}
if super {
	snd_play(sndNothingFire);
	with instance_create(x,y,SquarePool)
	{
		speed = 0;
		image_angle = 0;
		team = other.team;
	}	
}
///Damage indicator
scrEnemyTakingDamage();