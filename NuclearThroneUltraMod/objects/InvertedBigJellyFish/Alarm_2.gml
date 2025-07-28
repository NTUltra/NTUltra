///@description Fire
if ammo > 0
{
	alarm[2] = 4;
	if ammo == maxAmmo || ammo % 2 == 0
	{
		snd_play(sndToxicBoltGas,0.1,true)
	}
	if ammo == maxAmmo
	{
	}
	ammo -= 1
	alarm[2] = 2
	sprite_index = spr_fire
	var ang = random(360);
	var am = 12;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas) {
			cantHitTeam = other.team;
			motion_add(ang,4);	
		}
		ang += angStep;
	}
}
else
{
	sprite_index = spr_idle
}

alarm[1] += alarm[2];