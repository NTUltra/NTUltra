scrDrop(droprate,0)
if !sleeping && existTime > 20
{
	snd_play(sndExplosionL)
	ang = random(360)
	instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
	instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
	instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)


	instance_create(x,y,Explosion);
	snd_play(sndLightning1,0.1)
	var ang = random(360);
	var am = 6;
	var angStep = 360/am;
	var l = min(6,4+GetPlayerLoops());
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = l;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += angStep;
	}
}

event_inherited()


