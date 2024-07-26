event_inherited();
image_speed = 1.2;

BackCont.shake += 1
team = 2;
dmg = 0.5;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_xscale += 0.15;
		image_yscale += 0.15;
		image_speed -= 0.1;
		if Player.betterlaserbrain > 1
		{
			image_xscale += 0.1;
			image_yscale += 0.1;
			image_speed -= 0.1;
		}
		else if Player.betterlaserbrain > 0
		{
			image_xscale += 0.1;
			image_yscale += 0.1;
		}
	}
}
instance_create(x,y,Smoke)

