/// @description Do diamonds
alarm[5] = 90 - min(60,((loops-2)*10));
var ang = diamondsAngle;
var spd = 2 + min(4,((loops-2)*0.25));
repeat(8)
{
	with instance_create(x,y,EnemyBullet1Square)
	{
		team = other.team;
		sprite_index = sprEnemyBullet1SquareHyperCrystal;
		direction = ang;
		speed = spd;
		image_angle = 45;
	}
	spd += 0.125;
	ang += 45;
}
diamondsAngle += 45;
if loops > 6
	diamondsAngle -= 22.5;