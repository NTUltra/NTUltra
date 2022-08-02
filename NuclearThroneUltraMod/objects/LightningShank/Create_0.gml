event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable


dmg=10;
snd_hit=sndLightning1
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed = max(0.1,0.2-(Player.betterlaserbrain*0.6))
		hits ++;
		snd_hit=sndLightning3
		shk++;
	}
}
