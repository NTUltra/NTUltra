event_inherited();
meleeAmmoType = 0;
image_speed = 0.4;
canBeAngled = false;
appliedBoost = false;
appliedAmmoChange = false;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable 4 = laser
hits = 1;
hitDelay = 8;
hitEntities = [];
longarms = 0;
walled = 0
canAlwaysDeflect = false;
hasCosted = 0;
canKillSquares = false;
if scrIsCrown(40)
{
	canKillSquares = true;
	canAlwaysDeflect = true;
}
friction = 0.1

snd_wallhit=sndMeleeWall;
snd_hit=sndHitWall;
shk = 5;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.bloodMelee || um == ultramods.krakenMelee
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
wallPierce = 0.6;
if instance_exists(Player) 
{
	//Long arms
	if Player.skill_got[13]
	{
		wallPierce = 0.15;
		friction *= 0.5;
		image_xscale += 0.18;//0.1;
		image_yscale += 0.18;//0.1;
		if Player.ultra_got[97] && !Player.altUltra
		{
			wallPierce = 0.05;
			image_xscale += 0.27;//0.1;
			image_yscale += 0.27;//0.1;
		}
	}
	if Player.ultra_got[34]
	{
		hits ++;
	}
}
alarm[10] = 1;
knockback = 7;
alarm[3] = 1;