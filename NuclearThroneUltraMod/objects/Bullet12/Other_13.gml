/// @description Hit wall
snd_play(choose(sndPlopBounce1,sndPlopBounce2),0.05,true,true,1,false);
if wallbounce > 6
{
	if speed + wallbounce > 18
		speed = 18
	else
	{
		speed += wallbounce;
		instance_create(x,y,Dust)
		if speed > 28
			speed = 28;
	}
}
else
{
	speed -= 1;	
}
if wallbounce > 0
	wallbounce -= 1;
if shotgunshouldered && speed > 2
{
	direction = scrAimAssistLaser(direction,0.75,16, true);
	if sprite_index == sprBullet12
	{
		sprite_index = sprBullet12HighDamage;
		dmg = 5;
		alarm[1] += 3;
	}
	else if sprite_index == sprBullet12Disappear
	{
		sprite_index = sprBullet12;
	}
}
if wallbounce < 6
{
	speed -= 0.25;
	minSpeed -= 0.25;
}
if wallbounce <= 0
{
	friction += 0.1;
}