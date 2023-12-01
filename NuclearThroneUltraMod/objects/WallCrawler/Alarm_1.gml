///@description AI
alarm[1] = actTime + random(actTime)
if alarm[2] > 0 || alarm[3] > 0
{
	exit;
}
scrTarget()
if target != noone {
	var ran = random(10);
	var dis = point_distance(target.x, target.y, x, y)
	if dis < 96 && ran < 4
	{
		snd_play(snd_melee);
		targetWalkTime = 2;
		alarm[2] = 10;//Time before re-entering wall
		scrTarget();
		spr_idle = spr_expose;
		spr_walk = spr_idle;
		spr_hurt = spr_expose_hurt;
		sprite_index = spr_idle;
		image_index = 0;
		myWall = noone;
		if target != noone
		{
			fallOutDirection = point_direction(x,y,target.x,target.y);
			direction = fallOutDirection;
			speed = maxSpeed;
			alarm[1] = 10 + actTime;
			fallWalk = 4;
			walk = 0;
		}
	} else if dis < 400 {
		if ran < 2 && dis < 260 && firstHit{
			gunangle = point_direction(x, y, target.x, target.y)
			var pdis = 0;
			var xx = x;
			var yy = y;
			var msk = mask_index;
			mask_index = mskBigGuardianBullet;
			while (place_meeting(xx,yy,Wall) && pdis < 32)
			{
				xx += lengthdir_x(1,gunangle);
				yy += lengthdir_y(1,gunangle);
				pdis += 1;
			}
			if pdis < 32 && place_meeting(x,y,Floor)
			{
				snd_play(sndBigBallFire);
	            with instance_create(x,y,Throne2BigBulletSpawn)
				{
					owner = other.id;
					team = other.team
					isInverted = other.isInverted;
					if isInverted
					{
						sprite_index = sprInvertedBigGuardianBulletSpawn;
					}
				}
				alarm[1] += (actTime*4);
			}
			mask_index = msk;
        }
		else if ran < 4 && dis < 260 && firstHit{
			gunangle = point_direction(x, y, target.x, target.y)
			var pdis = 0;
			var xx = x;
			var yy = y;
			var msk = mask_index;
			mask_index = mskBigGuardianBullet;
			while (place_meeting(xx,yy,Wall) && pdis < 32)
			{
				xx += lengthdir_x(1,gunangle);
				yy += lengthdir_y(1,gunangle);
				pdis += 1;
			}
			if pdis < 32 && place_meeting(x,y,Floor)
			{
				snd_play(sndBigBallFire);
	            with instance_create(xx,yy,BigGuardianBulletSpawn)
				{
					owner = other.id;
					team = other.team;
					isInverted = other.isInverted;
					if isInverted
					{
						sprite_index = sprInvertedBigGuardianBulletSpawn;
					}
				}
				alarm[1] += (actTime*4);
			}
			mask_index = msk;
        }
        else if ran < 7 {
            snd_play(sndNothingSmallball,0.2);
			gunangle = point_direction(x, y, target.x, target.y);
            with instance_create(x,y,normalBullet)
			{	
				typ = 3;
				if other.isInverted
					sprite_index = sprInvertedGuardianSquareBulletSpawn;
				else
					sprite_index = sprGuardianSquareBulletSpawn;
				team = other.team;
				owner = other.id;
				motion_add(other.gunangle,other.projectileSpeed);
			}
			alarm[1] += 2;
        }
		else if !instance_exists(Wall)
		{
			if ran < 5
				ran += 5;
			if ran < 7
			{
				walk = random(actTime*4);
				direction = random(360);
			}
			else if ran < 9
			{
				walk = actTime + random(actTime*4);
				direction = point_direction(x,y,target.x,target.y);	
			}
		}
		if ran < 5
			ran += 5;
		if ran < 9  && firstHit{
			var triedDirections = 0;
			var ranDir = choose(1,-1);
			while triedDirections < 4
			{
				//UP
				if collision_point(x,y-8,Wall,false,false) && ran < 5.25 {
					myWall = instance_position(x, y-8,Wall);
					event_user(0);
					triedDirections = 4;
				}
				//DOWN
				else if collision_point(x,y+16,Wall,false,false) && ran < 6.5 {
					myWall = instance_position(x, y + 16, Wall);
					event_user(0);
					triedDirections = 4;
				}
				//LEFT
				else if collision_point(x-16,y,Wall,false,false) && ran < 7.75 {
					myWall = instance_position(x - 16, y,Wall);
					event_user(0);
					triedDirections = 4;
				}
				//RIGHT
				else if collision_point(x+16,y,Wall,false,false) {
					myWall = instance_position(x + 16, y,Wall);
					event_user(0);
					triedDirections = 4;
				}
				ran -= 1;
				triedDirections ++;
			}
		}
    }
}
