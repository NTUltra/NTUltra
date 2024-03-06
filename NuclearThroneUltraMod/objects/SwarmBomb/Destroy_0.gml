/// @description Boom
snd_play(sndClusterOpen);
with instance_create(x,y,SwarmBurst2)
{
	ammo = other.ammo;
	angStep = other.angStep;
	angOffset = other.angOffset;
	scrCopyWeaponMod(other);
	team = other.team;
	event_perform(ev_alarm,0) 
}
instance_create(x,y,WallBreakWallOnly);