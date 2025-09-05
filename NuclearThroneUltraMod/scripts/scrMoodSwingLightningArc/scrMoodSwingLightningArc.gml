///scrMoodSwingLightningArc();
// /@description
///@param
function scrMoodSwingLightningArc(range,xx,yy, wantTeam, damage){
	var n = instance_nearest_notme(x,y,enemy);
	if n != noone && instance_exists(n) && distance_to_object(n) < range && n.team != 2 && n.my_health > 0 && !collision_line(x,y,n.x,n.y,Wall,false,false)
	{
		var dir = point_direction(xx,yy,n.x,n.y);
		with instance_create(xx,yy,Lightning)
		{
			if !audio_is_playing(sndSpark1) && !audio_is_playing(sndSpark2)
				snd_play(choose(sndSpark1,sndSpark2),0.01,true,true,5,true,true,0.4);
			sprite_index = sprLightningMood;
			image_angle = dir;
			team = wantTeam;
			ammo = 12;
			canMood = false;
			dmg = damage;
			event_perform(ev_alarm,0);
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index = sprLightningSpawnMood;
				image_angle = other.image_angle
			}
		}
	}
}