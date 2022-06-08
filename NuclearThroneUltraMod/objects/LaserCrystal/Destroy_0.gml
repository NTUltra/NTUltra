scrDrop(droprate,1)

event_inherited()

if loops > 6
{
	snd_play(sndLaserUpg,0.01,true)
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = 180+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	if loops > 8
	{
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = 90+random(6)-3
			team = other.team
			event_perform(ev_alarm,0)
		}
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = 270+random(6)-3
			team = other.team
			event_perform(ev_alarm,0)
		}
	}
}
