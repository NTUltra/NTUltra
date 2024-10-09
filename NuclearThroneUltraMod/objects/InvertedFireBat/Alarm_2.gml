/// @description Lightning
snd_play(sndLightning1,0.1);
with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle+(random(14)-7)
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle
}
sprite_index = spr_fire
image_index = 0