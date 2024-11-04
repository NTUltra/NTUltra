/// @description Spawn flames on projectiles
var fireSpawned = 0;
var maxFire = 30;
alarm[10] = maxFire;
with Lightning
{
	if team == 2 && wepFire != -1
	{
		var al = array_length(lightningList);
		if al > 0 && alarm[0] < 1
		{
			for (var i = 0; i < al; i++) {
				if (i % 2 == 0)//Only half of the lightning has collision to optimize
				{
					with instance_create(x,y,Flame)
					{
						wepFire = -1;
						image_xscale -= 0.2;
						image_yscale -= 0.2;
						image_speed += 0.35;
						//alarm[1] = 1;
						direction = other.image_angle;
						speed = other.speed * 0.5;
						team = other.team
					}
					fireSpawned += 1;
					if fireSpawned > maxFire
						exit;
				}
			}
		}
	}
}
with Laser
{
	if team == 2 && wepFire != -1
	{
		var am = (image_xscale * 2) / 24;
		var xx = x;
		var yy = y;
		repeat(ceil(am))
		{
			with instance_create(xx,yy,Flame)
			{
				wepFire = -1;
				image_xscale -= 0.2;
				image_yscale -= 0.2;
				image_speed += 0.35;
				//alarm[1] = 1;
				direction = other.image_angle;
				speed = other.speed * 0.5;
				team = other.team
			}
			xx += lengthdir_x(24,image_angle+180);
			yy += lengthdir_y(24,image_angle+180);
			fireSpawned++;
			if fireSpawned > maxFire
				exit;
		}
	}
}
with projectile
{
	if team == 2 && wepFire != -1
	{
		with instance_create(x,y,Flame)
		{
			wepFire = -1;
			image_xscale -= 0.2;
			image_yscale -= 0.2;
			image_speed += 0.35;
			//alarm[1] = 1;
			direction = other.direction;
			speed = other.speed * 0.5;
			team = other.team
		}
		fireSpawned++;
		if fireSpawned > maxFire
			exit;
	}
}
//LASER AND LIGHTNING
alarm[10] = clamp(fireSpawned,4,maxFire);