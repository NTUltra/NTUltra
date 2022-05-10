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
	repeat(am)
	{
		with instance_create(x,y,EnemyBullet2)
	    {
		    motion_add(ang,4)
		    image_angle = direction
		    team = other.team
	    }
		ang += angStep;
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
}
else
{
	image_speed = 0;
	image_index = image_number - 1;
	if ! hasTriedPortal
	{
		alarm[0] = 20;	
	}
}