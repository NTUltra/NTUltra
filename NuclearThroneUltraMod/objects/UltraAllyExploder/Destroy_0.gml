/// @description xxx

// Inherit the parent event
event_inherited();

var dir = random(360)
repeat(20)
{
	dir += 18
	with instance_create(x,y,EnemyBullet2)
	{
		motion_add(dir,4)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,AcidStreak)
	{
		motion_add(dir,8)
		image_angle = direction
	}
}

repeat(4)
	with instance_create(x,y,UltraToxicThrowerGas)
	{
		speed += 1;	
	}