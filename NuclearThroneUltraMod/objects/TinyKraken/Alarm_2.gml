/// @description Constant tantcle
snd_play(choose(sndWater1,sndWater2,sndTentacle,sndTentacle2),0.1,true)
with instance_create(x,y,Tentacle)
{
	image_angle = other.randomAngle
	creator=other.id;
	team = other.team
	ammo = 4 + irandom(3);
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
randomAngle += randomAngleDir;
alarm[2] = rate + irandom(rate);
with instance_create(x,y,Dust)
{
	sprite_index = sprBubble;
	motion_add(random(360),random(2));
}
BackCont.shake += 1;