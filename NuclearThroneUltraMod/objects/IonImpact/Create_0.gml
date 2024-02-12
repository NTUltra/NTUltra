image_speed = 0.5

BackCont.shake += 4
Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
confDropChanceIndex = -1;
itemDropChanceIndex = -1;
weaponDropChanceIndex = -1;
wepFire = 0;
hadSpeedApplied = false;
poppop = false;
dmg = 5;
canBeMoved = true;
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

