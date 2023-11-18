snd_play(sndBouncerFlakExplo)
BackCont.shake += 10
with instance_create(x,y,BouncerCannonBurst)
{
	team = other.team;
	ammo = other.ammo;
	totalAmmo = ammo;
	time = other.time;
	ang = other.direction;
	team = other.team
	event_perform(ev_alarm,0)
}
with instance_create(x,y,BulletHit)
	sprite_index = sprFlakHit;
repeat(6)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

BackCont.shake += 8

