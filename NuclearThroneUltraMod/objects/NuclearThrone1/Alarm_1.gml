/// @description AI

if !active || intro || immune
	exit;
alarm[1] = aTime+random(10);
var beamL = x - 20;
var beamR = x + 20;
scrTarget();
if target > -1 && instance_exists(target)
{
	var ran = random(100);
	badboyBuff = 1;
	if target.x < x - 128 || target.x > x + 128 && ran > 50
	{
		fireTriShot = false;
		badboyBuff = 0.5; //Player is a bad boy double the firerate
		aTime *=0.5;
		event_user(2);
	}
	
	if target.y < y && ran > 50
	{
		//Above me
		walk = alarm[1];
		walkDir = -1.5;
		fireTriShot = false;
		bigballs = false;
	}
	else if ((target.y - y > 250 && ran > 64) || ran > 97 || target.y - y > 180)
	{
		//below me
		walk = alarm[1]-2;
		walkDir = 0.9;
		if target.y - y > 280
			walkDir += 0.4;
		fireTriShot = false;
		bigballs = false;
	}
	else if target.x > beamL && target.x < beamR && ran > 55
	{
		//In center
		bigballs = false;
		fireTriShot = false;
		event_user(0);//BEAM START
	}
	else if ran > 40 && cantrishot
	{
		//Tri shot
		bigballs = false;
		event_user(1);
	}
	else
	{
		fireTriShot = false;
		event_user(2);
	}
	if isInverted
	{
		walk = alarm[1];
		if walkDir == 0
			walkDir = 0.8;
	}
}
else if instance_exists(ThroneBeam)
{
	snd_play_2d(sndNothingBeamEnd);
	audio_stop_sound(sndNothingBeamLoop);
	with ThroneBeam
	{
		event_user(0);
	}
}
