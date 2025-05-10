/// @description Also Tentacle

// Inherit the parent event
event_inherited();
snd_play(sndRoll,0,true);
snd_play(sndBloodLauncher,0,true);

snd_play(choose(sndWater1,sndWater2) ,0,true);


with instance_create(x,y,Tentacle)
{
	image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
	creator=other.id;
	team = other.team
	ammo = 26
	sprite_index=sprUltraTentacle;
	ultra=true;
	dmg = 9;
	if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
	{
		dmg += 2;
	}
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

repeat(3){
	with instance_create(x,y,FishBoost)
	{
	motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,3);
	}}

}
