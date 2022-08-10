event_inherited();
image_speed = 0;
dmg = 10;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1


alarm[0]=10;
hits += 10;
is = 0.4;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		is = max(0.1,0.2-(Player.betterlaserbrain*0.6))
		hits ++;
	}
	if Player.ultra_got[34]//CHICKEN ninja ultra
	{
		is *= 0.5;	
	}
}
image_xscale -= 0.2;
image_yscale -= 0.2;