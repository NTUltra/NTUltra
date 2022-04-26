/// @description Big dog attack
spinBulletAngle = random(360);
var ang = spinBulletAngle;
snd_play(sndFlare);
var am = 10;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{motion_add(ang,1+random(1.5))
	team = other.team
	}
	ang += angStep;
}

am = amountOfSpinBulletProjectiles;
angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,EnemyBullet1)
	{
		motion_add(ang,other.pSpeed)
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}
scrDrop(20,0);
spinAttackAmmo = spinAttackMaxAmmo;
alarm[6] = spinAttackFireRate;
alarm[1] += spinAttackFireRate-2;
