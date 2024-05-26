/// @description AI
with enemy
{
	if y < other.y + 32
	{
		if object_index != NuclearThrone1 && object_index != NuclearThrone1Side
		&& object_index != InvertedNuclearThrone1
		{
			vspeed += 6;
			walk += 5;
			y = max(other.y + 32,y);
		}
	}
}
if !active || intro || immune
{
	alarm[1] = 30;
	exit;
}
maxSpeed = 3;

alarm[1] = aTime+random(10);
var beamL = x - 20;
var beamR = x + 20;
scrTarget();
if target != noone && instance_exists(target)
{
	//FUNNY DEBUG
	//my_health = 1;
	var ran = random(100);
	badboyBuff = 1;
	if target.x < x - 128 || target.x > x + 128 && ran > 50
	{
		fireTriShot = false;
		badboyBuff = 0.5; //Player is a bad boy double the firerate
		alarm[1] *= 0.5;
		event_user(2);
	}
	walkDir = 0;
	if target.object_index == Player && (target.y < y + 40 && ran > 50 || target.y  < y)
	{
		//Above me
		walk = alarm[1];
		walkDir = -1.5;
		fireTriShot = false;
		bigballs = false;
		maxSpeed = 5;
	}
	else if ((target.y - y > 180 && ran > 40) || ran > 94 || target.y - y > 220)
	{
		//below me
		walk = ceil(aTime*0.75);
		alarm[1] = walk;
		walkDir = 1.01;
		if target.y - y > 260
			walkDir += 0.3;
		if target.y - y > 350
			walkDir += 0.3;
		fireTriShot = false;
		bigballs = false;
		maxSpeed = 3 * walkDir;
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
		{
			walkDir = 0.84;
		} else if walkDir > 0
		{
			if y > yReset + 600
			{
				with chestprop
				{
					if y < other.yReset + 500
					{
						instance_destroy(id,false);	
					}
				}
				with Wall
				{
					if y < other.yReset + 500
					{
						instance_destroy(id,false);	
					}
				}
				with Top
				{
					if y < other.yReset + 500
					{
						instance_destroy(id,false);	
					}
				}
				with TopSmall
				{
					if y < other.yReset + 500
					{
						instance_destroy(id,false);	
					}
				}
				with Floor
				{
					if y < other.yReset + 500
					{
						instance_destroy(id,false);	
					}
					else if y < other.yReset + 516
					{
						if object_index == FloorExplo
							instance_create(x,y-16,Wall);
						else
						{
							instance_create(x,y-16,Wall);
							instance_create(x + 16,y-16,Wall);
						}
						instance_create(x,y-48,Top);
					}
				}
				yReset = y;
			}
			if walkDir >= 0 && walkDir <= 1
			{
				if y > ystart + 1800
					walkDir = 0.8;
				else if y > ystart + 1400
					walkDir = 0.9;
				else if y > ystart + 1200
					walkDir = 1;
				else if y > ystart + 900
					walkDir = 0.9;
				else if y > ystart + 600
					walkDir = 0.8;
				else if y > ystart + 300
					walkDir = 0.7;
					
				maxSpeed = 3.5 * walkDir;
			}
		}
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
