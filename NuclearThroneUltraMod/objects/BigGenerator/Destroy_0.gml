/// @description Spawn some guardians brotherfriend

// Inherit the parent event
event_inherited();

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}
snd_play(sndExplosionXL);
if loops > 0
{
	var scale = -1;
	if loops < 2
		scale = -0.5;
	if loops < 3
		scale = -0.75;
	with instance_create(x,y,GeneratorExplode)
	{
		hspeed = other.image_xscale * scale;
	}
}
else
{
	snd_play(sndExplosionXL);
	instance_create(x,y,GreenExplosion);
	var ang = random(360);
	var l = 32;
	var angstep = 120;
	repeat(3)
	{
		with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion) {
			team = other.team;	
		}
		ang += angstep;
	}
}

if instance_number(BigGenerator) == 1
{
	if loops < 1
	{
		var maxhealther = NuclearThrone1;
		var highestHealth = 0;
		with NuclearThrone1Side
		{
			if my_health > 0 && !disable && my_health > highestHealth
			{
				highestHealth = my_health;
				maxhealther = id;
			}
		}
		with NuclearThrone1 {
			my_health -= maxhealth*0.25;
			my_health = max(10,my_health);
		}
		with maxhealther
		{
			my_health = 0;	
		}
	}
}
scrDrop(50,0);