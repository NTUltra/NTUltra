/// @description Spawn some guardians brotherfriend

// Inherit the parent event
event_inherited();

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}
snd_play(sndExplosionXL);
with instance_create(x,y,GeneratorExplode)
{
	hspeed = other.image_xscale * -1;
}
scrRaddrop(10);

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
			my_health *= 0.5;
		}
		with maxhealther
		{
			my_health = 0;	
		}
	}
}