/// @description Faster on wallhit
//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}
if shotgunshouldered && speed > 2
{
	direction = scrAimAssistLaser(direction,0.75,16, true);
	if sprite_index == sprBullet2Heavy
	{
		sprite_index = sprBullet2HeavyHighDmg;
		dmg = 8;
		//alarm[1] = max(alarm[1],3);
		alarm[1] += 3;
	}
	else if sprite_index == sprBullet2HeavyDisappear
	{
		sprite_index = sprBullet2Heavy;
	}
	// scrShotgunShoulderBounce();
}
move_bounce_solid(false)
if speed+wallbounce > 20
speed = 20
else
speed += wallbounce*1.25
wallbounce *= 0.9

if speed > 28
	speed = 28;
instance_create(x,y,Dust)