//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
move_outside_solid(direction,8);
	speed *= 0.8
if speed+wallbounce > 18
	speed = 18
else
{
	speed += wallbounce
	instance_create(x,y,Dust)
	if speed > 28
		speed = 28;
}
wallbounce *= 0.9

if shotgunshouldered && speed > 2
{
	direction = scrAimAssistLaser(direction,0.75,16, true);
	if sprite_index == sprBullet2
	{
		sprite_index = sprBullet2HighDmg;
		dmg = 3;
		//alarm[1] = max(alarm[1],3);
		alarm[1] += 3;
	}
	else if sprite_index == sprBullet2Disappear
	{
		sprite_index = sprBullet2;
	}
	// scrShotgunShoulderBounce();
}




