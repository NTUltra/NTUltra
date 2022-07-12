target = -1;
if instance_exists(ElectroBall)
{

target = instance_nearest_notme(x,y,ElectroBall)

if target != noone && target>0 && instance_number(ElectroBall)>1 && instance_exists(target)
{ 
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
	sprite_index=sprActive;

		if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
		snd_play(choose(sndSpark1,sndSpark2))


		with instance_create(x,y,Lightning)
		{image_angle = point_direction(x,y,other.target.x,other.target.y)
		accuracy=0;
		target=other.target;
		team = other.team
		ammo = round(point_distance(x,y,other.target.x,other.target.y)*0.1);
		if ammo>25
		ammo=25;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}

	}
	else
	sprite_index=sprInactive;
}
else
sprite_index=sprInactive;
}
else
sprite_index=sprInactive;
alarm[1]=6;

