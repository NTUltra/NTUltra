
event_inherited()
if object_index != SuperKrakenBall
{
	snd_play(sndBloodLauncherExplo,0.1,true)
	snd_play(sndMeatExplo)
	instance_create(x,y,MeatExplosion)
	Sleep(10)
	instance_create(x+lengthdir_x(12,direction),y+lengthdir_y(12,direction),WallBreakWallOnly);
	var am = 6;
	var ang = fireRotation;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Tentacle)
		{
			image_angle = ang;
			creator=other.id;
			team = other.team
			ammo = 16;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}
		    with instance_create(x,y,FishBoost)
		    {
				motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,2+random(4));
		    }
		}
		ang += angStep;
	}
}