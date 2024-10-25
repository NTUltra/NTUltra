/// @description Init

// Inherit the parent event
event_inherited();
typ = 1;
dmg = 30;
fxLength = 28;
friction = 0.2;
hitEntities = [];
alarm[0] = 1;
alarm[1] = 5;
image_speed = 0.3;
rotation = choose(20,-20);
minSpeed = 3;
xScale = 1;
yScale = 1;
time = random(1);
timeScale = 0.1;
scaleDirection = 1;
flexScale = 0.2;
balls = 14;
alarm[2] = 180;
hitResetRate = 7;
alarm[0] = hitResetRate;
bounce = 1;
ballX = x;
ballY = y;
knockback = 6;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		bounce += 1;	
	}
	if Player.skill_got[17] = 1
	{
		dmg += 6;
		image_xscale += 0.25 + (Player.betterlaserbrain * 0.05);
		image_yscale += image_xscale;
		image_speed += 0.1 + (Player.betterlaserbrain * 0.1);
		hitResetRate -= 2 - Player.betterlaserbrain;
		flexScale += 0.025;
		hitResetRate = max(1,hitResetRate);
	}
	if Player.race == 11
    {
		minSpeed += 1;
    }
	if scrIsCrown(23)//Crown of speed
	{
		minSpeed += 1;
	}
	if scrIsCrown(24)//Crown of sloth
	{
		minSpeed -= 1;
	}
}