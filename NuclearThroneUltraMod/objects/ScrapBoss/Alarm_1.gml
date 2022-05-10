if ammo > 0
{
spr_hurt = sprScrapBossHurtSpin
snd_play(sndEnemyFire)
ammo -= 1
alarm[1] = 6
sprite_index = spr_fire
walk = 0
scrTarget()
if target > 0
motion_add(point_direction(x,y,target.x,target.y)+turn*80,0.3)


if instance_exists(Player)
{//Loop leave no gap in spin attack on loop
    if Player.loops>0
    {
    
    repeat(4)
		{
		if choose(true,true,false)
		with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
		{
		motion_add(other.gunangle,2+random(0.5))
		image_angle = direction
		team = other.team
		}
		gunangle += 360/4
		}
		if Player.loops>1
	    {
    
	    repeat(6)
			{
			if choose(true,true,false)
			with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
			{
			motion_add(other.gunangle,3.1+random(0.5))
			image_angle = direction
			team = other.team
			}
			gunangle += 360/6
			}

	    }
		if Player.loops>3
	    {
    
			repeat(3)
			{
			if choose(true,true,false)
			with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1Square)
			{
			motion_add(other.gunangle,3+random(1))
			image_angle = direction
			team = other.team
			}
			gunangle += 360/3
			}

	    }
    }
    else
    { 
    
    repeat(5)//6
	{
	with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
	{
	motion_add(other.gunangle,2)
	image_angle = direction
	team = other.team
	}
	gunangle += 360/6
	}
    
    }
}
else
{


repeat(5)//6
{
with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
{
motion_add(other.gunangle,2)
image_angle = direction
team = other.team
}
gunangle += 360/6
}

}


gunangle += 4*turn
}
else
{
spr_hurt = sprScrapBossHurt
spr_idle = sprScrapBossStop
image_index = 0
sprite_index = spr_idle
alarm[0] = 20
if instance_exists(Player)
    {
    if Player.loops>0
    alarm[0]=12;
    }
}

