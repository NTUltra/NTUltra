image_speed = 1.2;

BackCont.shake += 2
Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
wepFire=0;
team = 2
dmg = 0.5;
confDropChanceIndex = -1;
itemDropChanceIndex = -1;
weaponDropChanceIndex = -1;
hadSpeedApplied = false;
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

