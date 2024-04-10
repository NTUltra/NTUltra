/// @description Explooode

if !sleeping
{
	snd_play(sndExplosionL);
	with instance_create(x,y,PurpleExplosion)
		team = other.team
	exploAmount = 16;
}
else
{
	charge = false;
	fire = false;
}
event_inherited()
