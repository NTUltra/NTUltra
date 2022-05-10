event_inherited();
image_speed = 0.4
appliedBoost = false;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable
hits = 1;
hitDelay = 7;
hitEntities = [];
walled = 0
friction = 0.1
sleepRate=15;
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
if instance_exists(Player) && Player.ultra_got[34]
{
	hits ++;
}
