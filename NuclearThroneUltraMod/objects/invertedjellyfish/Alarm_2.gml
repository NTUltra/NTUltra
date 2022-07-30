///@description Fire Toxic
if ammo > 0
{
	if ammo == maxAmmo
	{
		snd_play(sndToxicBoltGas,0.1,true)
	}
	ammo -= 1
	alarm[2] = 2
	sprite_index = spr_fire
	var ang = random(360);
	var am = 8;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas) {
			motion_add(ang,1);	
		}
		ang += angStep;
	}
}
else
{
	sprite_index = spr_idle
}

