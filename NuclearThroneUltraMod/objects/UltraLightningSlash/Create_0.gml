event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1

//hit=false;
dmg = 50
snd_wallhit=sndMeleeWall;
snd_hit=sndLightning1;

if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed = max(0.15,0.25-(Player.betterlaserbrain*0.6))
		hits ++;
		snd_hit=sndLightning3
		shk++;
	}
	else
		snd_hit=sndLightning1
}
