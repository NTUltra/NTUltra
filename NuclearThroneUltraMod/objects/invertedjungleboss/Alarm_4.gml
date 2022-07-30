/// @description End charge
snd_play(sndEnemyFire)
var pSpeed = 4.5;
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(45,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(315,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(135,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(225,pSpeed)
	image_angle = direction
	team = other.team
}
