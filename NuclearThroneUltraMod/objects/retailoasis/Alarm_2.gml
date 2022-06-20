if instance_exists(Player)
{
    if Player.my_health<Player.maxhealth*0.5
    {
	    with Player
			oasisskip=-1;
    
	    //with BanditBoss
	    //oasis=false;
    
	    with WantBoss
		{
			if oasis
				instance_destroy();
		}
    
	    if !instance_exists(BanditBoss)
	    {
			instance_destroy();
		}
    }
}
    if (instance_number(enemy) < BackCont.enemiesInStartLevel * 0.6)
    {
    
	    with Player
			oasisskip=-1;
    
	    with WantBoss
		{
			if oasis
				instance_destroy();
		}
	    if !instance_exists(BanditBoss)
	    {
			instance_destroy();
		}
    
    }
alarm[2] = 1;
