if collision_point(x,y,Floor,false,false) && !place_meeting(x,y,Wall)
{
	scrDrop(8,5)
	scrRaddrop();
}
Sleep(20)
if (canExplode && (!instance_exists(Player) || !Player.outOfCombat))
{
	if ghostType == 0
	{
		snd_play(sndSmallGhostDie,0.1);
		with instance_create(x,y,SmallGhostExplosion)
		{
			dmg = other.dmg;
			with myExplosionMask
			{
				dmg = min(3,ceil(other.dmg * 0.5));
			}
			direction = other.direction;	
		}
	}
	else if ghostType == 1
	{
		snd_play(sndGhostDie,0.1);
		with instance_create(x,y,MediumGhostExplosion)
		{
			dmg = other.dmg;
			with myExplosionMask
			{
				dmg = min(3,ceil(other.dmg * 0.5));
			}
			direction = other.direction;	
		}
	}
	else if ghostType == 2
	{
		snd_play(sndBigGhostDie,0.1);
		with instance_create(x,y,BigGhostExplosion)
		{
			dmg = other.dmg;
			with myExplosionMask
			{
				dmg = min(3,ceil(other.dmg * 0.5));
			}
			direction = other.direction;	
		}
	}
}
else
{
	var ang = random(360);
	var am = 3;
	if ghostType == 1
	{
		snd_play(sndSmallGhostDie,0.1);
		am = 6;
	}
	else if ghostType == 2
	{
		snd_play(sndBigGhostDie,0.1);
		am = 12;
	}
	else
	{
		snd_play(sndSmallGhostDie,0.1);
	}
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(ang,2);	
		}
		ang += angStep;
	}
}