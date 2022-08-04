/// @description Trace lightning to nearby electroballs
target = noone;
if instance_exists(ElectroBall)
{
	target = instance_nearest_notme(x,y,ElectroBall)

	if target != noone && instance_number(ElectroBall)>1 && instance_exists(target)
	{ 
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
		{
		sprite_index=sprActive;

			if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
			snd_play(choose(sndSpark1,sndSpark2))
			var ahead = 2;
			var tx = target.x + (target.hspeed*ahead);
			var ty = target.y + (target.vspeed*ahead);
			with instance_create(x+(hspeed*ahead)*ahead,y+(vspeed*ahead),Lightning)
			{
				image_angle = point_direction(x,y,tx,ty)
				dmg -= other.dmgReduction;
				accuracy=0;
				target = other.target;
				target=other.target;
				team = other.team
				ammo = round(point_distance(x,y,tx,ty)*0.12);
				if ammo>25
				ammo=25;
				fork = 99;
				event_perform(ev_alarm,0)
				visible = 0
			//with instance_create(x,y,LightningSpawn)
			//	image_angle = other.image_angle
			}

		}
		else
		sprite_index=sprInactive;
	}
	else
	sprite_index=sprInactive;
}
else
sprite_index=sprInactive;
alarm[1]=electroDelay;