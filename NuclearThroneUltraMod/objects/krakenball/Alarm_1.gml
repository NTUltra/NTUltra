/// @description Tentacles!
alarm[1] = 5;

snd_play(choose(sndWater1,sndWater2),0.1,true)
snd_play(sndBloodLauncher,0.1,true);
with instance_create(x,y,Tentacle)
{
	image_angle = other.fireRotation
	creator=other.id;
	team = other.team
	ammo = 8;
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
with instance_create(x,y,Tentacle)
{
	image_angle = other.fireRotation+180;
	creator=other.id;
	team = other.team
	ammo = 8;
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
fireRotation += 40;
BackCont.shake +=2;