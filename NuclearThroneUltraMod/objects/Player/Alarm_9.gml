/// @description Atom ultra pulse
if instance_exists(enemy)
{
	with instance_create(x,y,AtomPulse)
		team=other.team;
}
alarm[9]=60;

