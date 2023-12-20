/// @description Precise bullet
snd_play(sndEnemyFire);
var ga = point_direction(x,y,target.x,target.y);
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(ga,other.pSpeed-0.2)
	image_angle = direction
	team = other.team
}
scrRaddrop(6);