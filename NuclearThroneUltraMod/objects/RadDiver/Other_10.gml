/// @description Got hit fire random bullet
if alarm[2] < 1
{
	snd_play(sndVenusFlyTrapBulletFire,0.1);
	var angle = random(360);
	amountOfProjectiles = min(amountOfProjectiles,maxAmountOfProjectiles);
	var angleStep = 360/amountOfProjectiles;
	if isInverted
		repeat(amountOfProjectiles)
		{
			with instance_create(x,y,InvertedExploGuardianBullet)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
			}
			angle += angleStep;
		}
	else
		repeat(amountOfProjectiles)
		{
			with instance_create(x,y,ExploGuardianBullet)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
			}
			angle += angleStep;
		}
	alarm[2] = min(40,2 + amountOfProjectiles);
	toTarget = true;
}