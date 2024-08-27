///@description AI
alarm[1] = actTime + random(actTime)
var xx = middleX;
var yy = y + verticalDistanceBeteenTanks*0.5;
if !reachedHalfHealth  && my_health < maxhealth*0.5
{
	reachedHalfHealth = true;
	snd_play(sndVanWarning);
	actTime -= 1;
	if !isDown
	{
		alarm[8] +=	crazyDelay*2;
		crazyWaveSpeed += 6;
		crazyWaveSpeed += 6;
		crazyGap -= 6;
		crazyProjectileSpeed += 1;
		crazyDelay -= 1;
		laserDelay -= 10;
		crazyStep -= 4;
	}
	with IDPDTank {
		gunDelay -= 5;
		gunInBetween -= 1;
		projectileSpeed += 0.4;
		projectileSpeedAdd += 0.1;
	}
	with instance_create(xx,yy,IDPDSpawn) {
		x = xx;
		y = yy;
	}
}
if !isDown
{
	
	with Player {
		if ((x > other.middleX + other.moveRange + 52) || (x < other.middleX - other.moveRange - 52)
		|| (y < other.y) || (y > other.y + other.verticalDistanceBeteenTanks))
		{
			snd_play_2d(sndIonCharge);
			alarm[3] = max(alarm[3],4);
			with instance_create(x,y,ExploderPopoExplode)
			{
				targetX = xx;
				targetY = yy;
				distance = point_distance(x,y,targetX,targetY);
				dir = point_direction(x,y,targetX,targetY);
			}
			x = xx;
			y = yy;
			scrForcePosition60fps();
		}
	}
}
if !firstEntry
{
	firstEntry = true;
	alarm[3] = gunDelay;
	if !isDown
	{
		alarm[2] = laserDelay;
		alarm[3] = gunDelay*1.5;
	}
}
scrTarget()
idpdSpawnCooldown -= 1;
var ran = random(10);
if target != noone {
	walk = alarm[1] * 2;
	if ran < 1 && !instance_exists(PopoMissile) && !instance_exists(IDPDSpawn)
	{
	    snd_play(sndEliteGruntRocketFire);
	    wkick = 8
	    with instance_create(x,y,PopoMissile) {
		    motion_add(other.gunangle+random(10)-5,0.5)
		    image_angle = direction
			alarm[2] += 5;
		    team = other.team
		}
		speed = 0;
	    alarm[1] = actTime * 2;
		walk = alarm[1] * 2;

	}
	else if ran < 2
	{
		speed *= 0.5;
		walk = 0;
	}
	else if ran < 3 && !instance_exists(IDPDSpawn)
	{
		if (!isDown && idpdSpawnCooldown < 1)
		{
			idpdSpawnCooldown = 6;
			with instance_create(xx,yy,IDPDSpawn) {
				x = xx;
				y = yy;
			}
		}
		else
		{
			snd_play(sndGruntFire);
			with instance_create(x,y + laserY,IDPDBulletSmall) {
				motion_add(other.normalGunAngle,other.projectileSpeed);
				image_angle = direction
				team = other.team
			}
		}
		alarm += actTime;
	}
	else if ran < 4.5
	{
		var xxx = x;
		var yyy = y;
		x = xx;
		y = yy;
		scrDrop(14,0);
		x = xxx;
		y = yyy;
	}
}