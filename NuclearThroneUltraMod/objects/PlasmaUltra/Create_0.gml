event_inherited();
dmg = 100;
balls = 14;
destroyScale -= 0.1;
alarm[11] = 0;
maxSpeed += 4;
acc += 1;
alarm[2] = 1;
nomscale += 0.2;
wallScale += 0.005;
grow += 0.005;
hitShrink -= 0.07;
alarm[3] = 1;
snapRange = 70;
jumpedTo = [];
iframeSkip += 0.2;
if instance_exists(Player) && Player.skill_got[19]
{
	snapRange += 32;
	
	if Player.skill_got[17] = 1
	{
		dmg += 10;
		iframeSkip += 0.05;
		if Player.betterlaserbrain > 0
		{
			dmg += 20;
			iframeSkip += 0.05;
		}
	}
}