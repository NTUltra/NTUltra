//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6{
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
speed *= 0.7
if speed+wallbounce > 18
speed = 18
else
speed += wallbounce
wallbounce *= 0.8
instance_create(x,y,Dust)

if shotgunshouldered
{
	dmg=4;
	alarm[1] += 3;
	direction = scrAimAssistLaser(direction,0.75,16, true);
	if sprite_index == sprBullet7
		sprite_index = sprBullet7HighDmg;
}



