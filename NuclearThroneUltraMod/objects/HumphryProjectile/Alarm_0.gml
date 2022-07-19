if HumphryHit=0
{
    with projectile
    {
        if team=2 || other.object_index=Disc || other.object_index=ToxicGas || other.object_index=ToxicThrowerGas
        {
            if HumphryNr==other.HumphryNr
            {
                if HumphryHit = 1
                {
                    with other
						instance_destroy();
                    exit;
                }
            }
        }
    }
    with Explosion
    {
    
            if HumphryNr=other.HumphryNr
            {
                if HumphryHit = 1
                {
                    with other
                    instance_destroy();
                    exit;
                }
            }
    
    }
with Player
{
	if !outOfCombat
	{
		missedthislevel=true;
		HumphryLoss = true;
		HumphryTBcount=0;
		HumphrySkill--;

		with projectile
			HumphryHit=2;
	}

}

}

instance_destroy();

