event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
friction = 0.4;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 7;
nomscale = 1;
wallScale = 0.135;//0.14
grow = 0.04;
hitShrink = 0.37;
destroyScale = 0.4;
maxSpeed = 8;
acc = 1;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		nomscale += 0.38;
		wallScale -= 0.035;
		grow += 0.008;
		destroyScale -= 0.05;
		if Player.betterlaserbrain > 1
		{
			nomscale += 0.1;
			dmg ++;
		}
		else if Player.betterlaserbrain > 0
		{
			nomscale += 0.1
		}
		image_xscale = nomscale;
		image_yscale = nomscale;
	}
	if Player.race=11
    {
		acc += 0.5;
		maxSpeed += 2;
    }
	if scrIsCrown(23)//Crown of speed
	{
		acc += 0.5;
		maxSpeed += 2;
	}
	if scrIsCrown(24)//Crown of sloth
	{
		acc -= 0.2;
		maxSpeed -= 1.5;
	}
}
image_speed = 0.5
alarm[3] = 1;
alarm[11] = 1;