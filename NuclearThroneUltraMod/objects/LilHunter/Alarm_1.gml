alarm[1] = 8+random(8)
if loop
alarm[1]=2+random(4);
scrTarget()
if target > 0
{

//HAS A TARGET
if random(35) < 1 or (point_distance(x,y,target.x,target.y) < 64 and random(4) < 1) or (point_distance(x,y,target.x,target.y) > 160 and random(16) < 1)
{
//FLY
sprite_index = sprLilHunterLiftStart
image_index = 0
instance_change(LilHunterFly,false)
snd_play_2d(sndLilHunterLaunch)
}
else
{
//DON'T FLY
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
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
wkick = 8
repeat(8+irandom(loop))
{
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(100)-50,2+random(2))
image_angle = direction
team = other.team
}
}
}
else if random(5)<1
{

    //BOUNCER BULLETS
    gunangle = point_direction(x,y,target.x,target.y)+random(14)-7+30
    
    snd_play(sndBouncerShotgun)
    wkick = 8
    repeat(4+(irandom(loop)*2))
    {
    with instance_create(x,y,EnemyBouncerBullet)
    {
    motion_add(other.gunangle+random(20)-10,2+random(3))
    image_angle = direction
    team = other.team
    }
    }
    alarm[4]=6;

}
else if point_distance(x,y,target.x,target.y) > 130 && random(2)<1
{
//LONG SNIPE EXPLOSIVE
gunangle = point_direction(x,y,target.x,target.y)+random(10)-5

snd_play(sndEnemyFire)
wkick = 8
    
    with instance_create(x,y,EnemyBullet5)
    {
    motion_add(other.gunangle,8+random(4))
    image_angle = direction
    team = other.team
    }
    
}
else
{
//LONG RANGE
gunangle = point_direction(x,y,target.x,target.y)+random(36)-18

snd_play(sndEnemyFire)
wkick = 8
repeat(10+irandom(loop))
{
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle,5+random(4))
image_angle = direction
team = other.team
}
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
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

if walk > 0
motion_add(point_direction(UberCont.mouse__x,UberCont.mouse__y,x,y),0.3)

