event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
image_speed = 0;
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 12;
image_speed = 0;
friction = 0;
bounces = 6;
time = 0;
timeIncrease = 0.1;
if instance_exists(Player)
{
	if Player.skill_got[15]
	{
		bounces += 1;
	}
	if Player.skill_got[42]
	{
		timeIncrease += 0.2;
		if Player.ultra_got[97] && !Player.altUltra
		{
			timeIncrease = 1;
		}
	}
}
sprite_index = sprTennisBall;
image_index = choose(0,4);
trailColour = make_colour_rgb(164,229,0);

xprev = x;
yprev = y;

rotation = irandom_range(50,70) * choose(1,-1);

owner = noone;
yOffset = 0;
alarm[0] = 1;
maxSpeed = 8;