event_inherited();
alarm[1] = 6
active = 0

typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable

snd = sndRocketFly
alarm[0] = 1;
ultramodded = true;
alarm[11] = 1;
dmg = 18;
xprev = x;
yprev = y;
alarm[2] = 4;
maxSpeed = 18;
acc = 1.4;
if instance_exists(Player)
{
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