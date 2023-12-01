///scrSpawnCrown();
// /@description
///@param xx, yy, chosenCrown
function scrSpawnCrown(xx,yy,chosenCrown,canReAdd = true){
	with instance_create(xx,yy,Crown)
	{	
		crown = chosenCrown
		if canReAdd
			newThing = 0;//Not new
		if crown == 26
		{
			instance_destroy();
			with instance_create(x,y,CrownGunned)
			{
				crown = other.crown;
				scrCrownAnimation(crown);
			}
		}
		else
		{
			scrCrownAnimation(crown);
			if crown == 33//ECHO
				alarm[2] = 30;
			else
				alarm[2] = 0;
		}
	}
}