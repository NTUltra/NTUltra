///@description AI
alarm[1] = actTime;
scrTarget();
if active && target != noone && instance_exists(target) && point_distance(x,y,target.x,target.y) < 250
{
	var ps = projectileSpeed;
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(other.image_angle + 90,ps)
		dist=-50;
		image_angle = direction
		team = other.team
		alarm[1] = 0;
	}
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(other.image_angle + 180,ps)
		dist=-50;
		image_angle = direction
		team = other.team
		alarm[1] = 0;
	}
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(other.image_angle,ps)
		dist=-50;
		image_angle = direction
		team = other.team
		alarm[1] = 0;
	}
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(other.image_angle + 270,ps)
		dist=-50;
		image_angle = direction
		team = other.team
		alarm[1] = 0;
	}
	scrAddDrops(1);
	scrDrop(10,0);
}
if !lowHealth && my_health < 0.4
{
	lowHealth = true;
	maxSpeed += 1;
	acc ++;
	actTime -= 1;
}