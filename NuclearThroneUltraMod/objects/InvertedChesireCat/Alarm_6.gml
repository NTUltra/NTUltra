/// @description Constant circle spam
alarm[6] = 65;
snd_play(sndEnemyFire);
var angStep = 360/ca;
var ang = cang;
repeat(ca)
{
	 with instance_create(xprevious,yprevious,EnemyBullet1Square)
	{
		motion_add(ang,other.caspd+dcos(ang))
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}
cang += angStep*0.5;