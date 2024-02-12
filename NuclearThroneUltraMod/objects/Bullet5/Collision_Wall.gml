//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6{
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
move_outside_solid(direction,8);
speed *= 0.8
if speed+wallbounce > 18
speed = 18
else
speed += wallbounce
wallbounce *= 0.9
instance_create(x,y,Dust)

if shotgunshouldered && speed > 2
{
dmg=9;
alarm[1]=3;
	if sprite_index == sprBullet5
		sprite_index = sprUltraShellHighDmg;
}