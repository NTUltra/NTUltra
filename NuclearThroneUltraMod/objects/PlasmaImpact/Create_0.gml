image_speed = 0.5

BackCont.shake += 4

team = 2

repeat(3)
instance_create(x,y,Smoke)

dmg = 8;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		dmg += 1 
		image_xscale += 0.2;
		image_yscale += 0.2;
		if Player.betterlaserbrain > 0
			dmg += 1;
	}
}
