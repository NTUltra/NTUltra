/// @description Boom
instance_create(x,y,Explosion);
snd_play(sndExplosion);
snd_play(sndClusterOpen);
with instance_create(x,y,MissileBurst2)
{
	scrCopyWeaponMod(other);
	team = other.team;
	event_perform(ev_alarm,0) 
}