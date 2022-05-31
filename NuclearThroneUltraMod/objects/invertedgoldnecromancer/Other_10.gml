/// @description No corpse action
if target.x < x
	right = -1
else if target.x > x
	right = 1
if random(3) < 1 && point_distance(x,y,target.x,target.y) < 190
{
	gunangle = point_direction(x,y,target.x,target.y)
	snd_play(sndEnemyFire)
	wkick = 4
	with instance_create(x,y,EnemyBullet1Square)
	{
		motion_add(other.gunangle+random(20)-10,5.5)
		image_angle = direction
		team = other.team
	}
	alarm[1] += 5;
}