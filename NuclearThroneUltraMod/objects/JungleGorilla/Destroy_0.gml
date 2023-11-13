scrDrop(25,10)

event_inherited()
snd_play(sndToxicBarrelGas)
var dir = random(360);
var am = deathProjectile;
var angStep = 360/am
repeat(am)
{
	dir += angStep
	with instance_create(x,y,EnemyBullet2Curve)
	{
		image_yscale = -1;
		motion_add(dir,5)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,AcidStreak)
	{
		motion_add(dir,8)
		image_angle = direction
	}
}
repeat(am)
{
	dir += angStep
	with instance_create(x,y,EnemyBullet2Curve)
	{
		motion_add(dir,5)
		image_angle = direction
		team = other.team
	}
}