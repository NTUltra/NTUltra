/// @description FROG GASS

// Inherit the parent event
event_inherited();
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
	snd_play(choose(sndSpark1,sndSpark2))
with instance_create(xprevious,yprevious,Lightning)
{
	image_angle = other.image_angle+choose(60,-60);
	accuracy=0;
	team = other.team
	ammo = 8;
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
}
if isGaseous
{
	repeat(2)
	with instance_create(x,y,ToxicThrowerGas)
	{
		image_xscale -= 0.1
		image_yscale -= 0.1
		team = other.team;
		speed += 0.1;
	}
}