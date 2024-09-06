event_inherited();
image_speed = 0.4
canAlwaysDeflect = true;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1

dmg = 40;
if GetPlayerUltramod() == ultramods.bloodMelee
{
	alarm[11] = 0;//Is already blood
	visible = true;
	mask_index = mskHeavyBloodSlash;
}
if instance_exists(Player)
{
	if Player.ultra_got[74] && Player.altUltra
	{
		wallPierce = 0;
		speed += 1;
		destroyAll = true;
	}
	if Player.ultra_got[16]
	{
		dmg += 4;
	}
}
hitEnemy = false;
owner = -1;
hits ++;