scrDrop(100,10)

event_inherited()


dir = random(360)
repeat(5)
{
with instance_create(x,y,AcidStreak)
{
motion_add(other.dir,8)
image_angle = direction
}
dir += 72
}
if existTime > 10
	repeat(40)//60
	{
		with instance_create(x,y,EnemyBullet2)
		{
		motion_add(random(360),3+random(2))
		image_angle = direction
		team = other.team
		}
	}

