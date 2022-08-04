/// @description Electric instead?
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
snd_play(choose(sndSpark1,sndSpark2))

with instance_create(x,y,Flame)
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