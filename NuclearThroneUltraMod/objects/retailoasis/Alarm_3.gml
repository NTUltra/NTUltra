/// @description Just keep above half health
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
