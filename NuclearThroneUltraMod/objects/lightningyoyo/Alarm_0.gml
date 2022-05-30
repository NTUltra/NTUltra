/// @description Lightning!
alarm[0] = 6;

snd_play(sndLightning1);
//snd_play(sndBloodLauncher);

snd_play(choose(sndSpark1,sndSpark2) );
var accuracy = 1;
if instance_exists(Player)
	accuracy = Player.accuracy;
with instance_create(x,y,Lightning)
{
	image_angle = other.image_angle-90+(random(30)-15)*accuracy
	creator=other.id;
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	image_angle = other.image_angle
	}

}
with instance_create(x,y,Lightning)
{
	image_angle = other.image_angle+90+(random(30)-15)*accuracy
	creator=other.id;
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	image_angle = other.image_angle
	}
}

BackCont.shake += 2