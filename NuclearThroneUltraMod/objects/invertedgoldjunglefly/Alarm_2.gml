/// @description FLY MAGGOT!
scrTarget()

snd_play(sndFlyFire);
with instance_create(x,y,MaggotInverted)
{
	raddrop = 0;
	motion_add(other.gunangle+(random(28)-14),10)
	image_angle = direction
	team = other.team
	charge = true;
	alarm[1] = 0;
}
if (target != noone)
{
	gunangle = point_direction(x,y,target.x,target.y);
	direction = gunangle;
}
ammo --;
if ammo > 0
{
	alarm[2] = firerate;
	alarm[1] += firerate+3;
	speed --;
}
snd_play(choose(sndSpark1,sndSpark2),0.01,true)
var ang = angle;
var am = 2;
var l = 5;
repeat(am)
{
	with instance_create(x,y,Lightning)
	{
		image_angle = ang;
		team = other.team
		ammo = l;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	ang += 180;
}
angle += angleStep;