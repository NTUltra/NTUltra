scrDrop(4,20)

if (charge || fire)
{
	var amount = exploAmount;
	var angle = random(360);
	var angleStep = 360/amount;
	repeat(amount)
	{
		with instance_create(x,y,exploBullet)
		{
			motion_add(angle,other.projectileSpeed/3);
			image_angle = direction
			team = other.team
		}
		angle += angleStep;
	}
	snd_dead = snd_dead_charge;
}
event_inherited()

instance_create(x,y,WallBreak);