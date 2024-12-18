/// @description xxx

if sprite_index == sprFrogQueenDying
{
	BackCont.shake += 50
	Sleep(50);
	instance_create(x,y,BigWallBreak);
	sprite_index = sprFrogQueenDead;
	image_index = 0;
	snd_play(sndBallMamaDead2);
	var ang = random(360);
	var am = 80;
	var angStep = 360 / am
	var spd = 3 + min(14,GetPlayerLoops()*2);
	repeat(1 + floor((spd*0.5) - 3))
	{
		repeat(am)
		{
			with instance_create(x,y,EnemyBullet2)
		    {
			    motion_add(ang,spd)
			    image_angle = direction
			    team = other.team
		    }
			ang += angStep;
		}
		spd -= 2;
	}
}
else if sprite_index == sprInvertedFrogQueenDying
{
	BackCont.shake += 50
	Sleep(50);
	instance_create(x,y,GreenExplosion);
	instance_create(x,y,BigWallBreak);
	sprite_index = sprInvertedFrogQueenDead;
	image_index = 0;
	snd_play(sndBallMamaDead2);
	var ang = random(360);
	var am = 80;
	var angStep = 360 / am
	var spd = 8 + min(14,GetPlayerLoops()*2);
	repeat(1 + floor((spd*0.5) - 8))
	{
		repeat(am)
		{
			with instance_create(x,y,EnemyBullet2)
		    {
			    motion_add(ang,8)
			    image_angle = direction
			    team = other.team
		    }
			ang += angStep;
		}
		spd -= 2;
	}
}
else
{
	image_speed = 0;
	image_index = image_number - 1;
	if !hasTriedPortal
	{
		hasTriedPortal = true;
		alarm[0] = 20;	
	}
}