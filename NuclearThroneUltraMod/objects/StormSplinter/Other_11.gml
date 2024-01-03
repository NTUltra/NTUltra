/// @description BOUNCE AND LIGHTNING
if wallHits < 1
{
	move_bounce_solid(false);
	x -= lengthdir_x(14,image_angle);
	y -= lengthdir_y(14,image_angle);
	speed = clamp(speed*2,6,24);
	image_angle = direction;
	instance_create(x,y,Smoke);
	wallHits ++;
	image_angle = direction;
	if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
	snd_play(choose(sndSpark1,sndSpark2))
	with instance_create(x,y,Lightning)
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
		with instance_create(x,y,ToxicThrowerGas)
		{
			image_xscale -= 0.1
			image_yscale -= 0.1
			team = other.team;	
		}
	}
}
else
{
	event_inherited();	
}
