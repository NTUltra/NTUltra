event_inherited()
if sprite_index = spr_hurt
{
	alarm[2] = 0;
	alarm[3] = 0;
	corpseTarget = -1;
}
else if alarm[2] > 0
	sprite_index = spr_eat;
if shooting < 1
{
	if ammo > 0
	{
		ammo --;
		alarm[1] += fireRate;
		shooting = fireRate;
		snd_play(sndSnowTankShoot,0.1,false,true,2,false,false);
		if isInverted
		{
			event_user(2);
			var proj = EnemyBullet1
			if (ammo % 2 == 0)
				proj = EnemyBullet1Square
			with instance_create(x,y,proj)
			{
				motion_add(other.gunangle1,other.projectileSpeed)
				team = other.team
				image_angle = direction
			}
			shooting2--;
			if shooting2 < 1
			{
				shooting2 = fireRate2;
				with instance_create(x,y,EnemyBullet5)
				{
					motion_add(other.gunangle,other.projectileSpeed*0.6)
					team = other.team
					image_angle = direction
				}
			}
			with instance_create(x,y,proj)
			{
				motion_add(other.gunangle2,other.projectileSpeed)
				team = other.team
				image_angle = direction
			}
		}
		else
		{
			with instance_create(x,y,EnemyBullet5)
			{
				motion_add(other.gunangle,other.projectileSpeed)
				team = other.team
				image_angle = direction
			}
			event_user(2);
		}
	}
} else if shooting > 0
{
	shooting --;
}
if alarm[4] > 0
{
	instance_create(x,y,WallBreak);
	instance_create(x+random(8)-4,y+4+random(4),Dust)
	motion_add(direction,0.2);
	motion_add(chargeDirection,chargeSpeed);
	if speed > maxChargeSpeed
		speed = maxChargeSpeed;
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
		
	image_angle = direction;
}
else if alarm[7] < 1 //Charge tell??
{
	if walk > 0
	{
		walk -= 1
		motion_add(direction,0.8)
	}

	if speed > maxSpeed
	speed = maxSpeed

	if corpseTarget > -1 && instance_exists(corpseTarget) && alarm[2] < 1
	{
		if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
		{
			walk = 0;
			speed = 0;
			alarm[1] += 15;
			sprite_index = spr_eat;
			if alarm[2] < 1
			{
				image_index = 0;
			}
				
			alarm[2] = 15;
			alarm[3] = 1;

		}
	}
}