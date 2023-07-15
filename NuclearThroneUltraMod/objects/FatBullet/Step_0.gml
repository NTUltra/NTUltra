if instance_exists(Player)
{
    if Player.race=11
    {
	    if speed>14.2
	    {
	    speed=14.2;
	    }
    }
    else if speed>10
		speed=10;
	if scrIsCrown(23)//Crown of speed
	{
		speed += 2;	
	}
	if scrIsCrown(24) && speed > 8//Crown of sloth
	{
		speed = 8;
	}
}
else if speed>10
speed=10;

