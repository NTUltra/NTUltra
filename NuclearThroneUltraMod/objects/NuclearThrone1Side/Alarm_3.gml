/// @description Tri shot
if disable
	exit;
if owner > -1 && owner.fireTriShot && instance_exists(Player)
{
	alarm[3] = firerate;
	scrTarget();
	if target != noone && instance_exists(target)
	{
		snd_play_2d(sndNothingFire,random_range(00,0.004),true,true,2);
		
		var angleStep = 20;
		var odir = 0;
		var angle = gunangle[angleI] - angleStep;
		if loops > 0
		{
			if isInverted
			{
				var proj1 = InvertedExploGuardianBullet;
				var proj2 = InvertedExploGuardianSquareBullet;
				if (ammo % 2 == 0)
				{
					proj2 = InvertedExploGuardianBullet;
					proj1 = InvertedExploGuardianSquareBullet;
				}
				if isLeft
					odir = 0.09;
				else
					odir = -0.09;
			}
			else
			{
				var proj1 = ExploGuardianBullet;
				var proj2 = ExploGuardianSquareBullet;
				if (ammo % 2 == 0)
				{
					proj2 = ExploGuardianBullet;
					proj1 = ExploGuardianSquareBullet;
				}
			}
			with instance_create(x,y,proj1)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
				offsetDir = odir;
			}
			angle += angleStep;
			with instance_create(x,y,proj2)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
				offsetDir = odir;
			}
			angle += angleStep;
			with instance_create(x,y,proj1)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
				offsetDir = odir;
			}
		}
		else
		{
			var proj = ExploGuardianBullet;
			if isInverted
			{
				proj = InvertedExploGuardianBullet;
				if isLeft
					odir = 0.07;
				else
					odir = -0.07;
			}
			repeat(3)
			{
				with instance_create(x,y,proj)
				{
					motion_add(angle,other.projectileSpeed);
					image_angle = direction
					team = other.team
					offsetDir = odir;
				}
				angle += angleStep;
			}
		}
		ammo -= 1;
		if ammo < 0
		{
			alarm[3] += firerate;
			ammo = maxAmmo;
			angleI ++
			if angleI >= array_length(gunangle)
				angleI = 0;
		}
	}
}