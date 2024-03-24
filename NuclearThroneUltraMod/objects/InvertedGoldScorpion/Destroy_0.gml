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
if existTime > 10 && !sleeping
{
	repeat(44)
	{
		with instance_create(x,y,EnemyBullet2)
		{
			var ran = random(330);
				motion_add(other.gunangle+choose(ran,-ran),3.25+random(2))
			image_angle = direction
			team = other.team
		}
	}
}