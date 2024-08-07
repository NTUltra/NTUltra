/// @description Lightning explosion

// Inherit the parent event
event_inherited();
with instance_create(x,y,Dust)
{
	motion_add(other.direction,other.speed);	
}
if (esplode)
{
	if object_index == TinyJellyFish
	{
		snd_play(choose(sndSpark1,sndSpark2),0.01,true)
		var ang = random(360);
		var am = 3;
		var angStep = 360/am;
		var l = 2;
		repeat(am)
		{
			with instance_create(x,y,Lightning)
			{
				image_angle = ang;
				team = other.team
				ammo = l;
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
			}
			ang += angStep;
		}
	}
	else
	{
		snd_play(sndToxicBoltGas,0.1,true)
		var ang = random(360);
		var am = 6;
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,ToxicGas) {
				cantHitTeam = other.team;
				motion_add(ang,1);	
			}
			ang += angStep;
		}
	}
}