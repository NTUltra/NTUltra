event_inherited()
if object_index != SuperSeekerBall
{
	snd_play(sndSeekerShotgun,0.1,true)
	Sleep(10)
	instance_create(x+hspeed,y+vspeed,WallBreak);
	var am = 4;
	var ang = fireRotation;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,SeekerBolt)
		{motion_add(ang,7)
		image_angle = direction
		team = other.team}
		ang += angStep;
	}
}