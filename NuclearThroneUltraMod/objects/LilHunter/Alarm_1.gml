alarm[1] = 6+random(8)

canDodge = true;
if loop
	alarm[1] -= 3;
scrTarget()
if target != noone
{
motion_add(point_direction(x,y,target.x,target.y),3);
//HAS A TARGET
var dis = point_distance(x,y,target.x,target.y)
if random(35) < 1 or (dis < 64 and random(6) < 1) or (point_distance(x,y,target.x,target.y) > 160 and random(18) < 1)
{
//FLY
sprite_index = sprLilHunterLiftStart
image_index = 0
with BoltStick
	instance_destroy();
instance_change(LilHunterFly,false)
snd_play_2d(sndLilHunterLaunch)
	if random(6) < 1
	{
		snd_play_2d(sndLilHunterSummon)
		with Player
		{
			instance_create(x,y,IDPDSpawn);
		}	
	}
}
else
{
//DON'T FLY
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 || (dis < 250 && random(10) < 2)
{
//CAN SEE

if random(2) < 1
{
//FIRE

if point_distance(x,y,target.x,target.y) < 96 && random(2)<1
{
	//CLOSE RANGE
	gunangle = point_direction(x,y,target.x,target.y)+random(60)-30

	snd_play(sndEnemyFire)
	var r = irandom(min(8,loop))
	var angStep = 160/(6+r);
	ang = gunangle - 80;
	repeat(6+r)
	{
		with instance_create(x,y,EnemyBullet2)
		{
			motion_add(other.ang,3.5)
			image_angle = direction
			team = other.team
		}
		ang+=angStep;
	}
}
else if random(4)<1
{

    //BOUNCER BULLETS
    gunangle = point_direction(x,y,target.x,target.y)+random(14)-7+30
    
    snd_play(sndBouncerShotgun)
    wkick = 8
    ang = gunangle - 80;
	var r = irandom(min(3,loop))
	var angStep = 160/(3+r);
	repeat(3+r)
	{
		with instance_create(x,y,EnemyBouncerBullet)
		{
			motion_add(other.ang,3.5)
			image_angle = direction
			team = other.team
		}
		ang+=angStep;
	}
	alarm[1] += 8;
    alarm[4] = 4;

}
else if point_distance(x,y,target.x,target.y) > 130 && random(2)<1
{
	//LONG SNIPE EXPLOSIVE
	gunangle = point_direction(x,y,target.x,target.y)+random(10)-5

	snd_play(sndEnemyFire)
	wkick = 8
    
    with instance_create(x,y,EnemyBullet5)
    {
    motion_add(other.gunangle,8)
    image_angle = direction
    team = other.team
    }
    
}
else
{
	//LONG RANGE
	gunangle = point_direction(x,y,target.x,target.y)+random(36)-18

	snd_play(sndEnemyFire)
	snd_play(sndEraser);
	wkick = 8
	var s = 4.5;
	repeat(10+irandom(min(loop,3)))
	{
		with instance_create(x,y,EnemyBullet1)
		{
			motion_add(other.gunangle,s)
			image_angle = direction
			team = other.team
		}
		s+= 0.5;
	}
}


}
else
{
//WALK
direction = point_direction(x,y,target.x,target.y)+random(20)-10
speed = 0.4
walk = 8+random(4)
gunangle = point_direction(x,y,target.x,target.y)
}
}
else if ((random(10) < 1 && !instance_exists(IDPDSpawn)) || (random(25) < 1))
{
	snd_play_2d(sndLilHunterSummon)
	with Player
	{
		instance_create(x,y,IDPDSpawn);
	}
}
else if random(30)<1
{
//CAN'T SEE FLY AWAY FLY
sprite_index = sprLilHunterLiftStart
image_index = 0
with BoltStick
	instance_destroy();
instance_change(LilHunterFly,false)
snd_play_2d(sndLilHunterLaunch)

}
else
{
//HAS NO TARGET
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
}
else if random(10) < 1
{
//NO TARGET
motion_add(random(360),0.4)
walk = 8+random(4)
alarm[1] = walk+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

if walk > 0
motion_add(point_direction(UberCont.mouse__x,UberCont.mouse__y,x,y),0.3)

