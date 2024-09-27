event_inherited();
image_speed = 0.5

BackCont.shake += 3

team = 2
repeat(3)
	instance_create(x,y,Smoke)
dmg = 3;
typ = 0;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_xscale += 0.2;
		image_yscale += 0.2;
		image_speed -= 0.1;
		if Player.betterlaserbrain > 0
			dmg += 0.5;
	}
}
event_user(0);