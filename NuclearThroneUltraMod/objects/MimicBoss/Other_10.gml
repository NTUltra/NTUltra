/// @description Fire
gunangle = point_direction(x, y, target.x, target.y);
if weaponType == 0
{
	//MELEE
	snd_play(sndMeleeFlip);
	instance_create(x,y,Notice);
	instance_create(x+5,y,Notice);
	instance_create(x-5,y,Notice);
	alarm[5] = tellTime + 2;
	alarm[1] += tellTime + 2 + actTime + random(actTime);
	if point_distance(x,y,target.x,target.y) < 70
	{
		alarm[5] += 3;
		alarm[1] += 3;
	}
	direction = gunangle;
	speed = acc;
	walk = tellTime;
}
else if weaponType == 1
{
	//BULLET
	alarm[2] = fireRate;
	alarm[1] += actTime + (fireRate * maxAmmo);
	walk = alarm[1];
	ammo = maxAmmo;
}
else if weaponType == 2
{
	//SHOTGUN
	snd_play(sndShotReload);
	instance_create(x,y,Notice);
	instance_create(x+5,y,Notice);
	instance_create(x-5,y,Notice);
	alarm[4] = tellTime;
	alarm[1] += tellTime + actTime + random(actTime * 2);
	direction = gunangle;
	speed = acc;
	walk = ceil(tellTime * 0.5);
}
else if weaponType == 3
{
	//BOLT
	alarm[1] += tellTime + actTime;
	alarm[6] = tellTime - 1;
	direction = gunangle;
	speed = 0;
	snd_play(sndCrossReload);
}
else if weaponType == 4
{
	//EXPLOSIVE
	//BOLT
	alarm[1] += tellTime + actTime;
	alarm[3] = tellTime - 2;
	walk = tellTime;
	direction = random(360);
	speed = acc;
	snd_play(sndNadeReload);
}
else if weaponType == 5
{
	//ENERGY
	snd_play(sndPlasmaReload);
	alarm[1] += tellTime + actTime;
	alarm[7] = tellTime - 1;
	walk = alarm[1];
	direction = random(360);
	ammo = maxAmmo;
}