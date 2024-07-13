///@description AI
if firstTime
{
	instance_create(x,y,DramaCamera);	
}
alarm[1] = actTime + random(actTime)
scrTarget();
if instance_exists(Player)
{
	var prevWeaponType = weaponType;
	if scrMeleeWeapons(Player.wep)
	{
		weaponType = 0;
	} else {
		weaponType = Player.wep_type[Player.wep];
	}
	if prevWeaponType != weaponType
	{
		alarm[1] = max(2,actTime-2);
		if weaponType == 0
		{
			snd_play(sndSwapSword);
			gunSprite = sprSword;
		}
		else if weaponType == 1
		{
			snd_play(sndSwapPistol);
			gunSprite = sprRevolver;
		}
		else if weaponType == 2
		{
			snd_play(sndSwapShotgun);
			gunSprite = sprShotgun;
		}
		else if weaponType == 3
		{
			snd_play(sndSwapBow);
			gunSprite = sprCrossbow;
		}
		else if weaponType == 4
		{
			snd_play(sndSwapExplosive);
			gunSprite = sprNader;
		}
		else if weaponType == 5
		{
			snd_play(sndSwapEnergy);
			gunSprite = sprLaserGun;
		}
		exit;
	}
}
if target != noone {
	var dis = point_distance(x,y,target.x,target.y);
	var dir = point_direction(x,y,target.x,target.y);
	if weaponType == 0//MELEE
	{
		if dis < 96
		{
			event_user(0);
		}
		else
		{
			motion_add(dir,acc*2);
			mp_potential_step(target.x,target.y,maxSpeed + 1,false);
			walk = actTime;
			alarm[1] = actTime;
			if random(4) < 1
			{
				event_user(0);	
			}
		}
		if target.x < x
			right = -1
        else if target.x > x
			right = 1
	}
    else if weaponType == 4 || weaponType == 5  || !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
        if random(2) < 1 {
            event_user(0);
        }
        else {
			if weaponType != 2
				direction = point_direction(x, y, target.x, target.y) + 180 + random_range(100,-100)
			else
				direction = point_direction(x, y, target.x, target.y) + random_range(60,-60);
            speed = acc * 2
            walk = actTime * 2 + random(actTime * 2);
            gunangle = point_direction(x, y, target.x, target.y);
        }
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), acc)
        walk = actTime*2 + random(actTime*2)
        alarm[1] = walk + random(actTime*2)
        gunangle = direction
        if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    walk = actTime*2 + random(actTime*2)
    alarm[1] = walk + random(actTime*2)
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
