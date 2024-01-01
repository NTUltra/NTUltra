if instance_exists(Player)
{
	if Player.skill_got[12] = 1
	{
		speed = speed*0.8
		image_speed += 0.05;
	}
	if scrIsCrown(23)//Crown of speed
	{
		speed += 0.1;
		speed *= 1.05;
	}
	if scrIsCrown(24)//Crown of sloth
	{
		speed = max(0,speed-0.1);
		speed *= 0.84;
	}
}