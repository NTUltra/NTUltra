/// @description Ultra Lightning







// Inherit the parent event
event_inherited();
if (array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities)-1]))
{
	snd_play(snd_hit,0.1);
	with instance_create(hitEntities[array_length(hitEntities)-1].x,hitEntities[array_length(hitEntities)-1].y,UltraLightning)
	{
		instance_create(x,y,Smoke)
		image_angle = other.direction + random_range(30,-30);
		team = other.team
		ammo = 18
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}
