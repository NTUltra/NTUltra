maxhealth = 500
maxhealth *= clamp(1+(GetPlayerLoops() *0.5),1,2);
mySize = 1

spr_idle = sprIceFlowerIdle
spr_hurt = sprIceFlowerHurt
spr_dead = sprIceFlowerDead

event_inherited()
if instance_exists(UberCont) && !UberCont.unlocked_alt_routes
{
	instance_destroy(id,false);
	exit;
}
move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

canMoveOver = true;
name = "FEED";
blood = 0;
bloodNeeded = 4;
if (instance_exists(Player))
{
	if Player.area == 114//In jungle
	{
		name = "TO FROZEN CITY";
		bloodNeeded = 0;
	}
	else if Player.race == 4//Melting require a little less blood
	{
		bloodNeeded = 2;
	} else if Player.race == 19//Skeleton also less HP so less blood needed
	{
		bloodNeeded = 3;
	}
	if scrIsGamemode(32)
	{
		bloodNeeded = 0;	
	}
}
instance_create(x,y,WallBreak);
alarm[0] = 300;
used = false;