/// @description Can we revive?
instance_destroy();
snd_play(sndFreakPopoRevive);
with instance_create(x,y,ReviveFX) {
	sprite_index = sprPopoRevive;
}

snd_play(choose(sndSpark1,sndSpark2))
var langle = random(360);
var langstep = 360/8;
repeat(6)
{
	with instance_create(x,y,UltraLightning)
	{
		image_angle = langle;
		team = 2
		ammo = 12
		///if Player.ultra_got[59]=1 
		///ammo+=4;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	langle += langstep;
}