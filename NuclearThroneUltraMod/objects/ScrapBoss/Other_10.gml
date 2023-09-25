/// @description SpinFire
spr_hurt = sprScrapBossHurtSpin
snd_play(sndEnemyFire)
ammo -= 1
alarm[1] = fireRate
if sprite_index != spr_hurt
	sprite_index = spr_fire
walk = 0
scrTarget()
if target != noone
	motion_add(point_direction(x,y,target.x,target.y)+turn*80,0.3)


if loops>0
{
	var angStep = 360/4;
	repeat(4)
	{
		if choose(true,true,false)
			with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
			{
				motion_add(other.gunangle,2+random(0.5))
				image_angle = direction
				team = other.team
			}
		gunangle += angStep;
	}
	if loops>1
	{
	var angStep = 360/6;
	repeat(6)
		{
			if choose(true,true,false)
				with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
				{
					motion_add(other.gunangle,3.1+random(0.5))
					image_angle = direction
					team = other.team
				}
			gunangle += angStep
		}

	}
	if loops>3
	{
		var angStep = 360/3;
		repeat(3)
		{
			if choose(true,true,false)
			with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1Square)
			{
				motion_add(other.gunangle,3+random(1))
				image_angle = direction
				team = other.team
			}
			gunangle += angStep;
		}

	}
}
else
{ 
	var angStep = 360/6;
	repeat(5)//6
	{
		with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
		{
			motion_add(other.gunangle,2)
			image_angle = direction
			team = other.team
		}
		gunangle += angStep;
	}
}
gunangle += turnSpeed*turn