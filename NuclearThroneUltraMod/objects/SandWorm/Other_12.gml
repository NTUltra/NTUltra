/// @description Dig attack
var ang = dissapearAttackAngle;
var ps = disappearAttackProjectileSpeed;
snd_play(sndScorpionFire);
repeat(disappearAttackAmount)
{
	with instance_create(x + (xOffset * image_xscale), y - 8, EnemyBullet2Curve) {
		motion_add(ang, ps);
		image_angle = direction
		image_yscale = -1;
		team = other.team
	}
	ang += dissapearAttackAngleStep;
}
dissapearAttackAngle += dissapearAttackAngleStep*0.5;




