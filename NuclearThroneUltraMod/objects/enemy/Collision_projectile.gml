if(instance_exists(Player)){
    if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
    if other.team=Player.team{
    if Player.justAsheep
    {Player.justAsheep=false;
    instance_create(x,y-16,Notice);
    }}}
    
    
    
	if other.team = Player.team || other.object_index=Disc || other.object_index=ToxicThrowerGas
	{
		//WEAPON MODS!
		scrModHit();
		scrHumphryHit();
		//Sedatives
		if Player.ultra_got[100] && team != other.team
		{
			target = -1;
			walk = 0;
			var amount = 1;
			if Player.reload > 0
			{
				amount = Player.reload * 0.6;
				if Player.skill_got[5]
					var amount = Player.reload * 0.8;
				else
					var amount = Player.reload * 0.6;
			}
			
			if alarm[1] > 0 && my_health > 0
			{
				alarm[1] += amount;
				instance_create(x,y-6,SleepFX);
			}
		}

	}    
   
 
}

