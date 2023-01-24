event_inherited();
image_speed = 0.4
appliedBoost = false;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable 4 = laser
hits = 1;
hitDelay = 8;
hitEntities = [];
walled = 0
friction = 0.1

snd_wallhit=sndMeleeWall;
snd_hit=sndHitWall;
shk = 5;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.bloodMelee
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
wallPierce = 1;
if instance_exists(Player) 
{
	//Long arms
	if Player.skill_got[13]
	{
		wallPierce = 0.25;
		image_xscale += 0.18;//0.1;
		image_yscale += 0.18;//0.1;
		if Player.ultra_got[97] && !Player.altUltra
		{
			wallPierce = 0.05;
			image_xscale += 0.18;//0.1;
			image_yscale += 0.18;//0.1;
		}
		
	}
	if Player.ultra_got[34]
	{
		hits ++;
	}
}
knockback = 7;