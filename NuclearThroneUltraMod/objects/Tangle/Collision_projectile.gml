if instance_exists(Player){
	if Player.ultra_got[20] && !Player.altUltra//plant STEREO ultra D
    {
	    with other {
		    if team != Player.team
			{
				if isGrenade
					instance_destroy(id, false);
				else
					instance_destroy();
			}
		}
    }
	else if other.object_index == ToxicGas || other.object_index == TrapFire
	{
		x = xprevious
		y = yprevious
	}
}
