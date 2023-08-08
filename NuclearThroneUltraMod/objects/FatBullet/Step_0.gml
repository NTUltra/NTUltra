if instance_exists(Player)
{
	if speed>10
		speed = 10;
    if Player.race == 11
    {
		speed += 1;
    }
	if scrIsCrown(23)//Crown of speed
	{
		speed = max(speed+2,12)
	}
	if scrIsCrown(24) && speed > 8//Crown of sloth
	{
		speed = max(speed-2,8)
	}
}
else if speed>10
speed=10;

