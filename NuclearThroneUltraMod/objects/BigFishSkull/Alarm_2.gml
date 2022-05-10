if instance_exists(Player)
{
    if Player.my_health<Player.maxhealth*0.5&&spr_idle != sprBigFishSkull
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
	    {spr_idle = sprBigFishSkull
	    spr_hurt = sprBigFishSkullHurt}
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
    {spr_idle = sprBigFishSkull
    spr_hurt = sprBigFishSkullHurt}
    
    }
    
    if random(100)<1&&spr_idle=sprBigFishSkullOpen
    {
    
    repeat(irandom(12))
    {
        with instance_create(x,y,Dust)
        {
        sprite_index=sprBubble;
        motion_add(random(40)-20+90,1+random(3) );
        }
    }
    
    }
alarm[2] = 1;
