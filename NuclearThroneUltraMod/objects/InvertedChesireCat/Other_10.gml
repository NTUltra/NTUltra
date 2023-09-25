/// @description Quick burp
snd_play(sndBigBanditMeleeHit);
    snd_play(sndMinigun);
	if target != noone && instance_exists(target)
		gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    walk = 4+random(4)
    alarm[1] = walk+2
    var pa = 9;
	var atkAngle = 60;
	var angleStep = atkAngle / pa;
	var l = min(0.5,GetPlayerLoops()*0.1)
	var spd = 0.8 + l;
	var speedIncrement = 0.52 + l*0.5;
	var leftRight = 1;
    repeat(pa)
	{
	    with instance_create(xprevious,yprevious,EnemyBullet1Square)
		{
			motion_add(other.gunangle+(atkAngle*leftRight),spd)
			image_angle = direction
			team = other.team
		}
		atkAngle -= angleStep;
		spd += speedIncrement;
		leftRight*=-1;
	}
	//GOOI DR NOG MAAR EENTJE NA
	with instance_create(xprevious,yprevious,EnemyBullet1Square)
	{
		motion_add(other.gunangle,5.5)
		image_angle = direction
		team = other.team
	}