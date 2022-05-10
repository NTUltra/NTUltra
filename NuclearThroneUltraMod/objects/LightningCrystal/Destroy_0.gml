scrDrop(1,5)

event_inherited()


if loops > 8
{
	var ang = random(360);
	var am = 6;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = 8;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += angStep;
	}	
}
