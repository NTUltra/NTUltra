/// @description Spin attack again
var am = amountOfSpinBulletProjectiles;
var angStep = 360/am;
var ang = spinBulletAngle + (angStep * 0.5);
snd_play(sndWaveGun);
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
if spinAttackAmmo > 0
{
	spinAttackAmmo --;
	alarm[6] = spinAttackFireRate;
	alarm[1] += spinAttackFireRate-2;
}
scrDrop(14,0);
