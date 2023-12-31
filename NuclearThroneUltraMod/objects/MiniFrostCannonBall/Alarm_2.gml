/// @description Frost & lightning
if choose(false,true,false)
snd_play(choose(sndFrost1,sndFrost2))
with instance_create(x,y,IceFlame)
{motion_add(other.image_angle+random(10)-5,2+random(2))
team = other.team
}
	
with instance_create(x,y,Lightning)
{
	image_angle = random(360);
	accuracy=0;
	team = other.team
	ammo = 4;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
}
alarm[2] = 6;