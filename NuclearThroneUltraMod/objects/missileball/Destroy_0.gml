event_inherited()
if object_index != SuperMissileBall
{
	snd_play(sndNukeExplosion,0.1,true)
	instance_create(x,y,Explosion);
	Sleep(10)
	instance_create(x+hspeed,y+vspeed,WallBreakWallOnly);
	var am = 5;
	var ang = fireRotation;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Missile)
		{motion_add(ang,4)
		image_angle = direction
		team = other.team}
		ang += angStep;
	}
}