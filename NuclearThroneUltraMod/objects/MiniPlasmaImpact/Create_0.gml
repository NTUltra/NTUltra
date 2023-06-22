image_speed = 0.5

BackCont.shake += 2

team = 2
dmg=2;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		dmg += 1 
		image_xscale += 0.15;
		image_yscale += 0.15;
		if Player.betterlaserbrain > 0
			dmg += 1;
	}
}
instance_create(x,y,Smoke)

