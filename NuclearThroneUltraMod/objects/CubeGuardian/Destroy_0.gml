scrDrop(droprate,6)

if (charge)
{
	var angle = 0;
	repeat(4)
	{
		with instance_create(x,y,exploBullet)
		{
			motion_add(angle,other.projectileSpeed);
			image_angle = direction
			team = other.team
		}
		angle += 90;
	}
	snd_dead = snd_dead_charge;
}
event_inherited()

instance_create(x,y,WallBreak);