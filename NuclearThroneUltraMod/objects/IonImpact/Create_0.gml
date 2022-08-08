image_speed = 0.4

BackCont.shake += 4

team = 2

repeat(3)
instance_create(x,y,Smoke)

dmg = 2;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed -= 0.1;
		image_xscale += 0.2;
		image_yscale += 0.2;
		if Player.betterlaserbrain > 0
		{
			image_xscale += Player.betterlaserbrain*0.1;
			image_yscale += Player.betterlaserbrain*0.1
		}
		
	}
}

