event_inherited();
friction = 0.1

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
dmg = 4;
trailColour = c_white;
alarm[11] = 1;
isGasseous = false;
if instance_exists(Player)
{
	//FROG POTENCY
	if Player.ultra_got[92] && Player.altUltra
	{
		isGasseous = true;
		sprite_index = sprToxicSplinter;
	}
}