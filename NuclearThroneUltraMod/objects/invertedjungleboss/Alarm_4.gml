/// @description End charge
snd_play(sndEnemyFire)
var pSpeed = 2.8;
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
pSpeed = 5.2;
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(0,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(90,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(180,pSpeed)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(270,pSpeed)
	image_angle = direction
	team = other.team
}
scrDrop(5,0);