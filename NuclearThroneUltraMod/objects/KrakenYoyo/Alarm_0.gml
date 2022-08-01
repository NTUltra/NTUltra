/// @description Tentacles!
alarm[0] = 8;

snd_play(sndRoll);
//snd_play(sndBloodLauncher);

snd_play(choose(sndWater1,sndWater2) );
var accuracy = 1;
if instance_exists(Player)
	accuracy = Player.accuracy;
with instance_create(x,y,Tentacle)
{
	image_angle = other.image_angle-90+(random(30)-15)*accuracy
	creator=other.id;
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	with instance_create(x,y,FishBoost)
	{
	motion_add(other.image_angle-90+random(60)-30,2+random(4) );
	}

}
with instance_create(x,y,Tentacle)
{
	image_angle = other.image_angle+90+(random(30)-15)*accuracy
	creator=other.id;
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	with instance_create(x,y,FishBoost)
	{
	motion_add(other.image_angle+90+random(60)-30,2+random(4) );
	}
}

BackCont.shake += 2